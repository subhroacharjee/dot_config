"use strict";var n=Object.defineProperty;var i=Object.getOwnPropertyDescriptor;var d=Object.getOwnPropertyNames;var m=Object.prototype.hasOwnProperty;var r=(a,e)=>{for(var o in e)n(a,o,{get:e[o],enumerable:!0})},h=(a,e,o,s)=>{if(e&&typeof e=="object"||typeof e=="function")for(let c of d(e))!m.call(a,c)&&c!==o&&n(a,c,{get:()=>e[c],enumerable:!(s=i(e,c))||s.enumerable});return a};var f=a=>h(n({},"__esModule",{value:!0}),a);var k={};r(k,{default:()=>p});module.exports=f(k);var t=require("@raycast/api"),u=new t.Cache,w=async()=>{let a=u.get("todoist.focusedTask"),e=a?JSON.parse(a):void 0;try{e?await(0,t.launchCommand)({name:"home",type:t.LaunchType.UserInitiated,context:{view:`task_${e.id}`}}):(await(0,t.showHUD)("No focused task."),await(0,t.launchCommand)({name:"home",type:t.LaunchType.UserInitiated,context:{view:"inbox"}}))}catch{}},p=w;
