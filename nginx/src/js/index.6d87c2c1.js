(function(){"use strict";var t={384:function(t,e,n){var r=n(963),o=n(252),i=n.p+"img/Fit_Stepper.9acb7502.png";const s={class:"main"},a=(0,o._)("div",{class:"logoArea"},[(0,o._)("img",{src:i,alt:"FitStepper"}),(0,o._)("h1",null,"Fit Stepper")],-1),c=(0,o._)("div",{class:"login_form_top"},[(0,o._)("p",null,[(0,o.Uk)(" ユーザー名、パスワードをご入力の上、"),(0,o._)("br"),(0,o.Uk)("「ログイン」ボタンをクリックしてください。 新規登録の場合は、入力後、「新規登録」ボタンを押してください。 ")])],-1),u={class:"login_form_btm"},l=(0,o._)("br",null,null,-1);function p(t,e,n,i,p,f){return(0,o.wg)(),(0,o.iD)("div",s,[a,c,(0,o._)("div",u,[(0,o.wy)((0,o._)("input",{"onUpdate:modelValue":e[0]||(e[0]=t=>p.name=t),type:"name",name:"user_name",placeholder:"ユーザー名を入力してください"},null,512),[[r.nr,p.name]]),l,(0,o.wy)((0,o._)("input",{"onUpdate:modelValue":e[1]||(e[1]=t=>p.pass=t),type:"password",name:"password",placeholder:"パスワードを入力してください"},null,512),[[r.nr,p.pass]])]),(0,o._)("button",{onClick:e[2]||(e[2]=t=>f.login())},"ログイン"),(0,o._)("button",{onClick:e[3]||(e[3]=t=>f.addAccount())},"新規登録")])}var f=n(665),h={name:"App",data(){return{name:"",pass:""}},setup(){const{cookies:t}=(0,f.fP)();return{cookies:t}},mounted(){this.cookies.isKey("userId")&&(location.href="fitstepper.html")},methods:{addAccount:async function(){if(""==this.name||""==this.pass)return void alert("ユーザー名とパスワードの両方を入力してください。");const t="/api/user/add",e={name:this.name,pass_row:this.pass};let n;try{const r=await fetch(t,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(e)});if(r.ok){const t=await r.text();if("OK"!=t)return void alert("このユーザは既に登録済みです。");this.cookies.set("userName",this.name,2592e3),location.href="fitstepper.html"}else switch(r.status){default:throw n="何らかの理由でエラーが発生しました。",new Error(n)}}catch(n){alert(n)}},login:async function(){if(""==this.name||""==this.pass)return void alert("ユーザー名とパスワードの両方を入力してください。");const t="/api/user/login",e={name:this.name,pass_row:this.pass};let n;try{const r=await fetch(t,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(e)});if(r.ok){const t=await r.text();if("OK"!=t)return void alert("ユーザ名またはパスワードが間違っています。");this.cookies.set("userName",this.name,2592e3),location.href="fitstepper.html"}else switch(r.status){default:throw n="何らかの理由でエラーが発生しました。",new Error(n)}}catch(n){alert(n)}}}},d=n(744);const m=(0,d.Z)(h,[["render",p]]);var v=m;(0,r.ri)(v).mount("#app")}},e={};function n(r){var o=e[r];if(void 0!==o)return o.exports;var i=e[r]={exports:{}};return t[r](i,i.exports,n),i.exports}n.m=t,function(){var t=[];n.O=function(e,r,o,i){if(!r){var s=1/0;for(l=0;l<t.length;l++){r=t[l][0],o=t[l][1],i=t[l][2];for(var a=!0,c=0;c<r.length;c++)(!1&i||s>=i)&&Object.keys(n.O).every((function(t){return n.O[t](r[c])}))?r.splice(c--,1):(a=!1,i<s&&(s=i));if(a){t.splice(l--,1);var u=o();void 0!==u&&(e=u)}}return e}i=i||0;for(var l=t.length;l>0&&t[l-1][2]>i;l--)t[l]=t[l-1];t[l]=[r,o,i]}}(),function(){n.d=function(t,e){for(var r in e)n.o(e,r)&&!n.o(t,r)&&Object.defineProperty(t,r,{enumerable:!0,get:e[r]})}}(),function(){n.g=function(){if("object"===typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(t){if("object"===typeof window)return window}}()}(),function(){n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)}}(),function(){n.p="/"}(),function(){var t={826:0};n.O.j=function(e){return 0===t[e]};var e=function(e,r){var o,i,s=r[0],a=r[1],c=r[2],u=0;if(s.some((function(e){return 0!==t[e]}))){for(o in a)n.o(a,o)&&(n.m[o]=a[o]);if(c)var l=c(n)}for(e&&e(r);u<s.length;u++)i=s[u],n.o(t,i)&&t[i]&&t[i][0](),t[i]=0;return n.O(l)},r=self["webpackChunkfit_stepper"]=self["webpackChunkfit_stepper"]||[];r.forEach(e.bind(null,0)),r.push=e.bind(null,r.push.bind(r))}();var r=n.O(void 0,[998],(function(){return n(384)}));r=n.O(r)})();
//# sourceMappingURL=index.6d87c2c1.js.map