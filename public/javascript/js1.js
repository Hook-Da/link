window.onload = _ =>
{
	/*
	** xhr section
	*/
	let xhr = new XMLHttpRequest();
	let pathOfWebSite = window.location.href;
	function get(dataObject, elementObject)//////////////////////////////////////////////
	{
		console.log(dataObject.data);
		if(dataObject.data !== undefined)
		{
			let dataToSend = dataObject.data;
			dataToSend = dataToSend.split(' ').join('_');
			dataObject.linkName = dataObject.linkName.split(' ').join('_');
			
			dataObject.page += dataToSend + '='+dataObject.linkName;
		}
		xhr.open('GET',dataObject.page,true);
		xhr.setRequestHeader('x-Requested-With','XMLHttpRequest');
		xhr.onreadystatechange = _ =>
		{
			if(xhr.readyState === 4 && xhr.status === 200)
			{
				elementObject.parentElement.remove();
				let responseFromServer = xhr.responseText;
				responseFromServer = JSON.parse(responseFromServer);
				console.log(responseFromServer);
			}
		}
		xhr.send();
	}
	/*
	**
	*/
	let myModal = document.querySelector('#myModal');
	let myModal2 = document.querySelector('#myModal2');
	let btnForShowForm = document.querySelectorAll('.btn');
	let forms = document.querySelectorAll('form');
	for(let i = 0; i < 3; i++)
	{
		btnForShowForm[i].addEventListener('click', _ =>
		{
			myModal.style.display = 'block';
			forms[i].style.display = 'block';
		},false);
	}
	window.onclick = (event) =>
			{
				if(event.target == myModal)
				{
					myModal.style.display = 'none';
					for(let i = 0; i < 3; i++)
						forms[i].style.display = 'none';
				}
				if(event.target === myModal2)
				{
					myModal2.style.display = 'none';
				}
			}
	let btnSels = document.querySelectorAll('.buttonSel');
	let selects = document.querySelectorAll('select');

		btnSels.forEach((item,i)=>{
			item.addEventListener('click', _=>
			{
				var win = window.open(selects[i].value,'_blank');
				if(win)
				{
					win.focus();
				}
				else
				{
					alert('Please allow popups for this website');
				}	
			});
		});
		loopThrough(selects,'focus',function(){
			this.classList.add("addClassToSelectOnFocus");
		});
		loopThrough(selects,'blur',function(){
			this.classList.remove("addClassToSelectOnFocus");
		});
	/*
	*////////////////////////////////////////////////////////// EDIT SECTION
	
	let editSpan = document.querySelectorAll('.edit');
	loopThrough(editSpan,'click',function(){
				let linkName = prompt("Name of link:","");
				if((linkName.trim() == "")||(linkName == null)) { return false;}
				else
				{
					let x = this.parentElement.getElementsByTagName('h6')[0].innerHTML;
					let dataObject = 
					{
						page: pathOfWebSite + '/update/editSave/q?',
						data:x,
						linkName: linkName
					};
					console.log(this.parentElement);
					this.parentElement.getElementsByTagName('h6')[0].innerHTML = escapeHtml(linkName);
					get(dataObject);
				}
				});
	
				/*
	* END OF  EDIT SECTION
	*/
	//====================================================
	/*
	* ====================================================================DELETE SECTION
	*/
	let closeSpan = document.querySelectorAll('.close');
	loopThrough(closeSpan,'click', function()
			{
				if(confirm('Are you sure you want to delete this link?'))
				{
					let dataObject = {};
					dataObject.page = pathOfWebSite + 'update/editDelete/' + this.parentElement.getElementsByTagName('h6')[0].innerHTML.split(' ').join('_');
					console.log(window.location.hostname);// localhost
					console.log(window.location.pathname); // /link/
					console.log(window.location.href); // http://localhost/link/					
					get(dataObject, this);
				}
				else
				{
					return false;
				}
			});
	
	/*
	* ==========================================================END OF DELETE SECTION
	*/
	function escapeHtml(text) {
		  var map = {
		    '&': '&amp;',
		    '<': '&lt;',
		    '>': '&gt;',
		    '"': '&quot;',
		    "'": '&#039;'
		  };

		  return text.replace(/[&<>"']/g, (m) => { return map[m]; });
	}
	let deleteUpdates = document.querySelectorAll('.deleteUpdate');
	let unordList = document.querySelector('.editRightPart');
	
	/*for(let i = 0; i < deleteUpdates.length; i++)
	{
		deleteUpdates[i].addEventListener('click',() =>
			{
				unordList.innerHTML = '';
				myModal2.style.display = 'block';
				let options = this.parentElement.childNodes[2].childNodes;
				for(let j = 0; j < options.length; j++)
				{
					let li = document.createElement('li');
						li.innerHTML = '<a href="'.concat(options[j].value,'"target="_blank "><button>',options[j].innerHTML,'</button></a><span>&times;</span>');
						unordList.appendChild(li);
				}
				return;
			},false);
	}*/
	var options = {
			  month: 'long',
			  day: 'numeric',
			  weekday: 'long',
			  hour: 'numeric',
			  minute: 'numeric',
			  second: 'numeric'
			};
	setInterval( _ =>
		{
			let date = new Date();
			document.getElementById('time').innerHTML = date.toLocaleString("en-US", options);
		},1000);
	function loopThrough(array,eventName,callback){
		array.forEach((item)=>{
			item.addEventListener(eventName,callback.bind(item),false);
		});
	}
};