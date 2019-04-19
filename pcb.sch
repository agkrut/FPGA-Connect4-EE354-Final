<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="3" fill="9" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="11" fill="1" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="13" fill="1" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="5" fill="1" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="lib-te0600-eagle">
<packages>
<package name="TE0600">
<description>&lt;b&gt;PCB Matrix Packages&lt;/b&gt;&lt;p&gt;</description>
<wire x1="25" y1="3" x2="25" y2="37" width="0.254" layer="51"/>
<wire x1="25" y1="37" x2="22" y2="40" width="0.254" layer="51" curve="90"/>
<wire x1="22" y1="40" x2="-22" y2="40" width="0.254" layer="51"/>
<wire x1="-22" y1="40" x2="-25" y2="37" width="0.254" layer="51" curve="90"/>
<wire x1="-25" y1="37" x2="-25" y2="3" width="0.254" layer="51"/>
<wire x1="-25" y1="3" x2="-22" y2="0" width="0.254" layer="51" curve="90"/>
<wire x1="-22" y1="0" x2="22" y2="0" width="0.254" layer="51"/>
<wire x1="22" y1="0" x2="25" y2="3" width="0.254" layer="51" curve="90"/>
<pad name="DRILL2" x="-22" y="37" drill="3" diameter="6" rot="R180"/>
<pad name="DRILL1" x="22" y="37" drill="3" diameter="6" rot="R180"/>
<pad name="DRILL3" x="-22" y="3" drill="3" diameter="6" rot="R180"/>
<pad name="DRILL4" x="22" y="3" drill="3" diameter="6" rot="R180"/>
<dimension x1="22" y1="0" x2="-22" y2="0" x3="0" y3="-7" textsize="3.5" layer="51"/>
<dimension x1="25" y1="37" x2="25" y2="3" x3="30" y3="20" textsize="3.5" layer="51"/>
<smd name="J2-1" x="-12.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-2" x="-12.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-3" x="-11.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-4" x="-11.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-5" x="-11.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-6" x="-11.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-7" x="-10.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-8" x="-10.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-9" x="-10.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-10" x="-10.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-11" x="-9.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-12" x="-9.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-13" x="-9.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-14" x="-9.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-15" x="-8.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-16" x="-8.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-17" x="-8.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-18" x="-8.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-19" x="-7.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-20" x="-7.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-21" x="-7.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-22" x="-7.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-23" x="-6.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-24" x="-6.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-25" x="-6.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-26" x="-6.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-27" x="-5.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-28" x="-5.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-29" x="-5.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-30" x="-5.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-31" x="-4.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-32" x="-4.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-33" x="-4.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-34" x="-4.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-35" x="-3.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-36" x="-3.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-37" x="-3.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-38" x="-3.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-39" x="-2.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-40" x="-2.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-41" x="-2.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-42" x="-2.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-43" x="-1.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-44" x="-1.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-45" x="-1.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-46" x="-1.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-47" x="-0.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-48" x="-0.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-49" x="-0.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-50" x="-0.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-51" x="0.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-52" x="0.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-53" x="0.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-54" x="0.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-55" x="1.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-56" x="1.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-57" x="1.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-58" x="1.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-59" x="2.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-60" x="2.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-61" x="2.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-62" x="2.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-63" x="3.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-64" x="3.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-65" x="3.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-66" x="3.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-67" x="4.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-68" x="4.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-69" x="4.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-70" x="4.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-71" x="5.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-72" x="5.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-73" x="5.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-74" x="5.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-75" x="6.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-76" x="6.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-77" x="6.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-78" x="6.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-79" x="7.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-80" x="7.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-81" x="7.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-82" x="7.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-83" x="8.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-84" x="8.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-85" x="8.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-86" x="8.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-87" x="9.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-88" x="9.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-89" x="9.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-90" x="9.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-91" x="10.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-92" x="10.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-93" x="10.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-94" x="10.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-95" x="11.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-96" x="11.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-97" x="11.75" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-98" x="11.75" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-99" x="12.25" y="34.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J2-100" x="12.25" y="37.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<wire x1="15.35" y1="33.05" x2="15.35" y2="38.95" width="0.254" layer="21"/>
<wire x1="15.35" y1="38.95" x2="-15.35" y2="38.95" width="0.254" layer="21"/>
<wire x1="-15.35" y1="38.95" x2="-15.35" y2="33.05" width="0.254" layer="21"/>
<wire x1="-15.35" y1="33.05" x2="15.35" y2="33.05" width="0.254" layer="21"/>
<smd name="J1-1" x="-12.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-2" x="-12.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-3" x="-11.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-4" x="-11.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-5" x="-11.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-6" x="-11.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-7" x="-10.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-8" x="-10.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-9" x="-10.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-10" x="-10.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-11" x="-9.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-12" x="-9.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-13" x="-9.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-14" x="-9.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-15" x="-8.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-16" x="-8.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-17" x="-8.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-18" x="-8.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-19" x="-7.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-20" x="-7.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-21" x="-7.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-22" x="-7.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-23" x="-6.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-24" x="-6.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-25" x="-6.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-26" x="-6.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-27" x="-5.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-28" x="-5.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-29" x="-5.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-30" x="-5.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-31" x="-4.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-32" x="-4.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-33" x="-4.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-34" x="-4.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-35" x="-3.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-36" x="-3.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-37" x="-3.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-38" x="-3.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-39" x="-2.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-40" x="-2.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-41" x="-2.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-42" x="-2.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-43" x="-1.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-44" x="-1.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-45" x="-1.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-46" x="-1.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-47" x="-0.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-48" x="-0.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-49" x="-0.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-50" x="-0.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-51" x="0.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-52" x="0.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-53" x="0.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-54" x="0.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-55" x="1.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-56" x="1.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-57" x="1.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-58" x="1.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-59" x="2.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-60" x="2.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-61" x="2.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-62" x="2.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-63" x="3.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-64" x="3.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-65" x="3.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-66" x="3.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-67" x="4.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-68" x="4.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-69" x="4.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-70" x="4.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-71" x="5.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-72" x="5.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-73" x="5.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-74" x="5.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-75" x="6.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-76" x="6.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-77" x="6.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-78" x="6.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-79" x="7.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-80" x="7.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-81" x="7.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-82" x="7.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-83" x="8.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-84" x="8.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-85" x="8.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-86" x="8.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-87" x="9.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-88" x="9.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-89" x="9.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-90" x="9.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-91" x="10.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-92" x="10.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-93" x="10.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-94" x="10.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-95" x="11.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-96" x="11.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-97" x="11.75" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-98" x="11.75" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-99" x="12.25" y="2.15" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="J1-100" x="12.25" y="5.85" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<wire x1="15.35" y1="1.05" x2="15.35" y2="6.95" width="0.254" layer="21"/>
<wire x1="15.35" y1="6.95" x2="-15.35" y2="6.95" width="0.254" layer="21"/>
<wire x1="-15.35" y1="6.95" x2="-15.35" y2="1.05" width="0.254" layer="21"/>
<wire x1="-15.35" y1="1.05" x2="15.35" y2="1.05" width="0.254" layer="21"/>
<text x="16.15" y="3.25" size="1.27" layer="51">J1</text>
<text x="16.3" y="35.6" size="1.27" layer="51">J2</text>
<dimension x1="25" y1="40" x2="-25" y2="40" x3="0" y3="45" textsize="3.5" layer="51"/>
<dimension x1="-25" y1="40" x2="-25" y2="0" x3="-30.589934375" y3="20" textsize="3.5" layer="51"/>
<dimension x1="22" y1="35.5" x2="22" y2="38.5" x3="33" y3="37" textsize="3.5" layer="51" dtype="diameter"/>
<hole x="-13.5" y="4.8632" drill="1.5"/>
<hole x="13.5" y="4.8632" drill="1.5"/>
<wire x1="14.85" y1="1.5632" x2="13.4" y2="1.5632" width="0.254" layer="51"/>
<wire x1="13.4" y1="1.5632" x2="13.4" y2="1.4732" width="0.254" layer="51"/>
<wire x1="13.4" y1="1.4732" x2="12.7" y2="1.4732" width="0.254" layer="51"/>
<wire x1="12.7" y1="1.4732" x2="12.7" y2="1.5632" width="0.254" layer="51"/>
<wire x1="12.7" y1="1.5632" x2="-12.7" y2="1.5632" width="0.254" layer="51"/>
<wire x1="-12.7" y1="1.5632" x2="-12.7" y2="1.4732" width="0.254" layer="51"/>
<wire x1="-12.7" y1="1.4732" x2="-13.4" y2="1.4732" width="0.254" layer="51"/>
<wire x1="-13.4" y1="1.4732" x2="-13.4" y2="1.5632" width="0.254" layer="51"/>
<wire x1="-13.4" y1="1.5632" x2="-14.85" y2="1.5632" width="0.254" layer="51"/>
<wire x1="-14.85" y1="1.5632" x2="-14.85" y2="3.1632" width="0.254" layer="51"/>
<wire x1="-14.85" y1="3.1632" x2="-14.85" y2="6.4632" width="0.254" layer="51"/>
<wire x1="-14.85" y1="6.4632" x2="-13.4" y2="6.4632" width="0.254" layer="51"/>
<wire x1="-13.4" y1="6.4632" x2="-13.4" y2="6.5532" width="0.254" layer="51"/>
<wire x1="-13.4" y1="6.5532" x2="-12.7" y2="6.5532" width="0.254" layer="51"/>
<wire x1="-12.7" y1="6.5532" x2="-12.7" y2="6.4632" width="0.254" layer="51"/>
<wire x1="-12.7" y1="6.4632" x2="12.7" y2="6.4632" width="0.254" layer="51"/>
<wire x1="12.7" y1="6.4632" x2="12.7" y2="6.5532" width="0.254" layer="51"/>
<wire x1="12.7" y1="6.5532" x2="13.4" y2="6.5532" width="0.254" layer="51"/>
<wire x1="13.4" y1="6.5532" x2="13.4" y2="6.4632" width="0.254" layer="51"/>
<wire x1="13.4" y1="6.4632" x2="14.85" y2="6.4632" width="0.254" layer="51"/>
<wire x1="14.85" y1="6.4632" x2="14.85" y2="3.1632" width="0.254" layer="51"/>
<wire x1="14.85" y1="3.1632" x2="14.85" y2="1.5632" width="0.254" layer="51"/>
<wire x1="15.35" y1="6.9632" x2="15.35" y2="1.0632" width="0.254" layer="21"/>
<wire x1="15.35" y1="1.0632" x2="-15.35" y2="1.0632" width="0.254" layer="21"/>
<wire x1="-15.35" y1="1.0632" x2="-15.35" y2="6.9632" width="0.254" layer="21"/>
<wire x1="-15.35" y1="6.9632" x2="15.35" y2="6.9632" width="0.254" layer="21"/>
<wire x1="14.3" y1="4.0632" x2="-14.3" y2="4.0632" width="0.254" layer="51"/>
<wire x1="-14.3" y1="4.0632" x2="-14.3" y2="4.8632" width="0.254" layer="51"/>
<wire x1="-14.3" y1="4.8632" x2="-13.825" y2="4.8632" width="0.254" layer="51"/>
<wire x1="-13.825" y1="4.8632" x2="-13.825" y2="5.4632" width="0.254" layer="51"/>
<wire x1="-13.825" y1="5.4632" x2="-13.075" y2="5.4632" width="0.254" layer="51"/>
<wire x1="-13.075" y1="5.4632" x2="-13.075" y2="4.8632" width="0.254" layer="51"/>
<wire x1="-13.075" y1="4.8632" x2="13.075" y2="4.8632" width="0.254" layer="51"/>
<wire x1="13.075" y1="4.8632" x2="13.075" y2="5.4632" width="0.254" layer="51"/>
<wire x1="13.075" y1="5.4632" x2="13.825" y2="5.4632" width="0.254" layer="51"/>
<wire x1="13.825" y1="5.4632" x2="13.825" y2="4.8632" width="0.254" layer="51"/>
<wire x1="13.825" y1="4.8632" x2="14.3" y2="4.8632" width="0.254" layer="51"/>
<wire x1="14.3" y1="4.8632" x2="14.3" y2="4.0632" width="0.254" layer="51"/>
<wire x1="14.85" y1="3.1632" x2="13.865" y2="3.1632" width="0.254" layer="51"/>
<wire x1="13.865" y1="3.1632" x2="13.865" y2="2.5632" width="0.254" layer="51"/>
<wire x1="13.865" y1="2.5632" x2="13.035" y2="2.5632" width="0.254" layer="51"/>
<wire x1="13.035" y1="2.5632" x2="13.035" y2="3.1632" width="0.254" layer="51"/>
<wire x1="13.035" y1="3.1632" x2="-13.035" y2="3.1632" width="0.254" layer="51"/>
<wire x1="-13.035" y1="3.1632" x2="-13.035" y2="2.5632" width="0.254" layer="51"/>
<wire x1="-13.035" y1="2.5632" x2="-13.865" y2="2.5632" width="0.254" layer="51"/>
<wire x1="-13.865" y1="2.5632" x2="-13.865" y2="3.1632" width="0.254" layer="51"/>
<wire x1="-13.865" y1="3.1632" x2="-14.85" y2="3.1632" width="0.254" layer="51"/>
<hole x="-13.5" y="36.8545" drill="1.5"/>
<hole x="13.5" y="36.8545" drill="1.5"/>
<wire x1="14.85" y1="33.5545" x2="13.4" y2="33.5545" width="0.254" layer="51"/>
<wire x1="13.4" y1="33.5545" x2="13.4" y2="33.4645" width="0.254" layer="51"/>
<wire x1="13.4" y1="33.4645" x2="12.7" y2="33.4645" width="0.254" layer="51"/>
<wire x1="12.7" y1="33.4645" x2="12.7" y2="33.5545" width="0.254" layer="51"/>
<wire x1="12.7" y1="33.5545" x2="-12.7" y2="33.5545" width="0.254" layer="51"/>
<wire x1="-12.7" y1="33.5545" x2="-12.7" y2="33.4645" width="0.254" layer="51"/>
<wire x1="-12.7" y1="33.4645" x2="-13.4" y2="33.4645" width="0.254" layer="51"/>
<wire x1="-13.4" y1="33.4645" x2="-13.4" y2="33.5545" width="0.254" layer="51"/>
<wire x1="-13.4" y1="33.5545" x2="-14.85" y2="33.5545" width="0.254" layer="51"/>
<wire x1="-14.85" y1="33.5545" x2="-14.85" y2="35.1545" width="0.254" layer="51"/>
<wire x1="-14.85" y1="35.1545" x2="-14.85" y2="38.4545" width="0.254" layer="51"/>
<wire x1="-14.85" y1="38.4545" x2="-13.4" y2="38.4545" width="0.254" layer="51"/>
<wire x1="-13.4" y1="38.4545" x2="-13.4" y2="38.5445" width="0.254" layer="51"/>
<wire x1="-13.4" y1="38.5445" x2="-12.7" y2="38.5445" width="0.254" layer="51"/>
<wire x1="-12.7" y1="38.5445" x2="-12.7" y2="38.4545" width="0.254" layer="51"/>
<wire x1="-12.7" y1="38.4545" x2="12.7" y2="38.4545" width="0.254" layer="51"/>
<wire x1="12.7" y1="38.4545" x2="12.7" y2="38.5445" width="0.254" layer="51"/>
<wire x1="12.7" y1="38.5445" x2="13.4" y2="38.5445" width="0.254" layer="51"/>
<wire x1="13.4" y1="38.5445" x2="13.4" y2="38.4545" width="0.254" layer="51"/>
<wire x1="13.4" y1="38.4545" x2="14.85" y2="38.4545" width="0.254" layer="51"/>
<wire x1="14.85" y1="38.4545" x2="14.85" y2="35.1545" width="0.254" layer="51"/>
<wire x1="14.85" y1="35.1545" x2="14.85" y2="33.5545" width="0.254" layer="51"/>
<wire x1="15.35" y1="38.9545" x2="15.35" y2="33.0545" width="0.254" layer="21"/>
<wire x1="15.35" y1="33.0545" x2="-15.35" y2="33.0545" width="0.254" layer="21"/>
<wire x1="-15.35" y1="33.0545" x2="-15.35" y2="38.9545" width="0.254" layer="21"/>
<wire x1="-15.35" y1="38.9545" x2="15.35" y2="38.9545" width="0.254" layer="21"/>
<wire x1="14.3" y1="36.0545" x2="-14.3" y2="36.0545" width="0.254" layer="51"/>
<wire x1="-14.3" y1="36.0545" x2="-14.3" y2="36.8545" width="0.254" layer="51"/>
<wire x1="-14.3" y1="36.8545" x2="-13.825" y2="36.8545" width="0.254" layer="51"/>
<wire x1="-13.825" y1="36.8545" x2="-13.825" y2="37.4545" width="0.254" layer="51"/>
<wire x1="-13.825" y1="37.4545" x2="-13.075" y2="37.4545" width="0.254" layer="51"/>
<wire x1="-13.075" y1="37.4545" x2="-13.075" y2="36.8545" width="0.254" layer="51"/>
<wire x1="-13.075" y1="36.8545" x2="13.075" y2="36.8545" width="0.254" layer="51"/>
<wire x1="13.075" y1="36.8545" x2="13.075" y2="37.4545" width="0.254" layer="51"/>
<wire x1="13.075" y1="37.4545" x2="13.825" y2="37.4545" width="0.254" layer="51"/>
<wire x1="13.825" y1="37.4545" x2="13.825" y2="36.8545" width="0.254" layer="51"/>
<wire x1="13.825" y1="36.8545" x2="14.3" y2="36.8545" width="0.254" layer="51"/>
<wire x1="14.3" y1="36.8545" x2="14.3" y2="36.0545" width="0.254" layer="51"/>
<wire x1="14.85" y1="35.1545" x2="13.865" y2="35.1545" width="0.254" layer="51"/>
<wire x1="13.865" y1="35.1545" x2="13.865" y2="34.5545" width="0.254" layer="51"/>
<wire x1="13.865" y1="34.5545" x2="13.035" y2="34.5545" width="0.254" layer="51"/>
<wire x1="13.035" y1="34.5545" x2="13.035" y2="35.1545" width="0.254" layer="51"/>
<wire x1="13.035" y1="35.1545" x2="-13.035" y2="35.1545" width="0.254" layer="51"/>
<wire x1="-13.035" y1="35.1545" x2="-13.035" y2="34.5545" width="0.254" layer="51"/>
<wire x1="-13.035" y1="34.5545" x2="-13.865" y2="34.5545" width="0.254" layer="51"/>
<wire x1="-13.865" y1="34.5545" x2="-13.865" y2="35.1545" width="0.254" layer="51"/>
<wire x1="-13.865" y1="35.1545" x2="-14.85" y2="35.1545" width="0.254" layer="51"/>
<pad name="CASE@4" x="-14.975" y="34.8545" drill="1"/>
<pad name="CASE@3" x="14.975" y="34.8545" drill="1"/>
<pad name="CASE@1" x="-14.975" y="2.8632" drill="1"/>
<pad name="CASE@2" x="14.975" y="2.8632" drill="1"/>
</package>
</packages>
<symbols>
<symbol name="TE0600-J1">
<pin name="B2B_B2_L57_N(AB4)" x="33.02" y="38.1" length="middle" rot="R180"/>
<pin name="B2B_B2_L49_N(AB6)" x="33.02" y="33.02" length="middle" rot="R180"/>
<pin name="B2B_B2_L49_P(AA6)" x="33.02" y="30.48" length="middle" rot="R180"/>
<pin name="B2B_B2_L57_P(AA4)" x="33.02" y="35.56" length="middle" rot="R180"/>
<pin name="B2B_B2_L48_N(AB7)" x="33.02" y="20.32" length="middle" rot="R180"/>
<pin name="EN" x="-27.94" y="43.18" length="middle"/>
<pin name="INIT(T6)" x="-27.94" y="40.64" length="middle"/>
<pin name="B2B_B2_L32_N(AB11)" x="-27.94" y="38.1" length="middle"/>
<pin name="B2B_B2_L60_P(T7)" x="-27.94" y="33.02" length="middle"/>
<pin name="B2B_B2_L60_N(R7)" x="-27.94" y="30.48" length="middle"/>
<pin name="B2B_B2_L59_N(R8)" x="-27.94" y="27.94" length="middle"/>
<pin name="B2B_B2_L59_P(R9)" x="-27.94" y="25.4" length="middle"/>
<pin name="B2B_B2_L44_N(Y10)" x="-27.94" y="20.32" length="middle"/>
<pin name="B2B_B2_L44_P(W10)" x="-27.94" y="17.78" length="middle"/>
<pin name="B2B_B2_L42_N(W11)" x="-27.94" y="15.24" length="middle"/>
<pin name="B2B_B2_L42_P(V11)" x="-27.94" y="12.7" length="middle"/>
<pin name="B2B_B2_L18_P(V13)" x="-27.94" y="7.62" length="middle"/>
<pin name="B2B_B2_L18_N(W13)" x="-27.94" y="5.08" length="middle"/>
<pin name="B2B_B2_L8_N(U16)" x="-27.94" y="2.54" length="middle"/>
<pin name="B2B_B2_L8_P(U17)" x="-27.94" y="0" length="middle"/>
<pin name="B2B_B2_L11_P(V17)" x="-27.94" y="-5.08" length="middle"/>
<pin name="B2B_B2_L11_N(W17)" x="-27.94" y="-7.62" length="middle"/>
<pin name="B2B_B2_L6_P(W18)" x="-27.94" y="-10.16" length="middle"/>
<pin name="B2B_B2_L6_N(Y18)" x="-27.94" y="-12.7" length="middle"/>
<pin name="B2B_B2_L5_P(Y19)" x="-27.94" y="-17.78" length="middle"/>
<pin name="B2B_B2_L5_N(AB19)" x="-27.94" y="-20.32" length="middle"/>
<pin name="B2B_B2_L9_N(V18)" x="-27.94" y="-22.86" length="middle"/>
<pin name="B2B_B2_L9_P(V19)" x="-27.94" y="-25.4" length="middle"/>
<pin name="B2B_B2_L4_N(T17)" x="-27.94" y="-30.48" length="middle"/>
<pin name="B2B_B2_L4_P(T18)" x="-27.94" y="-33.02" length="middle"/>
<pin name="B2B_B2_L29_N(Y12)" x="-27.94" y="-38.1" length="middle"/>
<pin name="B2B_B2_L10_N(R15)" x="-27.94" y="-40.64" length="middle"/>
<pin name="B2B_B2_L10_P(R16)" x="-27.94" y="-43.18" length="middle"/>
<pin name="B2B_B2_L2_N(AB21)" x="-27.94" y="-45.72" length="middle"/>
<pin name="B2B_B2_L2_P(AA21)" x="-27.94" y="-48.26" length="middle"/>
<pin name="B2B_B2_L48_P(Y7)" x="33.02" y="17.78" length="middle" rot="R180"/>
<pin name="B2B_B2_L45_N(AB8)" x="33.02" y="15.24" length="middle" rot="R180"/>
<pin name="B2B_B2_L45_P(AA8)" x="33.02" y="12.7" length="middle" rot="R180"/>
<pin name="B2B_B2_L43_N(AB9)" x="33.02" y="7.62" length="middle" rot="R180"/>
<pin name="B2B_B2_L43_P(Y9)" x="33.02" y="5.08" length="middle" rot="R180"/>
<pin name="B2B_B2_L41_N(AB10)" x="33.02" y="2.54" length="middle" rot="R180"/>
<pin name="B2B_B2_L41_P(AA10)" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="B2B_B2_L21_P(Y15)" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="B2B_B2_L21_N(AB15)" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="B2B_B2_L15_P(Y17)" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="B2B_B2_L15_N(AB17)" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="B2B_B2_L31_N(AB12)" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="SUSPEND(N15)" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="VBATT(R17)" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="VFS(P16)" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="RFUSE(P15)" x="33.02" y="-27.94" length="middle" rot="R180"/>
<pin name="AWAKE(T19)" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="CSO_B(T5)" x="33.02" y="-33.02" length="middle" rot="R180"/>
<pin name="CCLK(Y21)" x="33.02" y="-38.1" length="middle" rot="R180"/>
<pin name="MISO(AA20)" x="33.02" y="-40.64" length="middle" rot="R180"/>
<pin name="MOSI(AB20)" x="33.02" y="-43.18" length="middle" rot="R180"/>
<pin name="MOSI3(U13)" x="33.02" y="-45.72" length="middle" rot="R180"/>
<pin name="MOSI(U14)" x="33.02" y="-48.26" length="middle" rot="R180"/>
<wire x1="-22.86" y1="45.72" x2="27.94" y2="45.72" width="0.254" layer="94"/>
<wire x1="27.94" y1="45.72" x2="27.94" y2="-50.8" width="0.254" layer="94"/>
<wire x1="27.94" y1="-50.8" x2="-22.86" y2="-50.8" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-50.8" x2="-22.86" y2="45.72" width="0.254" layer="94"/>
<text x="-22.86" y="48.26" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<text x="-22.86" y="-53.34" size="1.27" layer="95" font="vector">&gt;NAME</text>
</symbol>
<symbol name="TE0600-J2">
<pin name="B2B_B0_L1(A4)" x="-27.94" y="45.72" length="middle"/>
<pin name="PFI" x="-27.94" y="43.18" length="middle"/>
<pin name="/MR" x="-27.94" y="40.64" length="middle"/>
<pin name="B2B_B0_L2_N(A5)" x="-27.94" y="33.02" length="middle"/>
<pin name="B2B_B0_L2_P(C5)" x="-27.94" y="35.56" length="middle"/>
<pin name="B2B_B0_L4_N(A6)" x="-27.94" y="30.48" length="middle"/>
<pin name="B2B_B0_L4_P(B6)" x="-27.94" y="27.94" length="middle"/>
<pin name="B2B_B0_L5_N(A7)" x="-27.94" y="22.86" length="middle"/>
<pin name="B2B_B0_L6_N(A8)" x="-27.94" y="17.78" length="middle"/>
<pin name="B2B_B0_L5_P(C7)" x="-27.94" y="20.32" length="middle"/>
<pin name="B2B_B0_L6_P(B8)" x="-27.94" y="15.24" length="middle"/>
<pin name="B2B_B0_L8_N(A9)" x="-27.94" y="10.16" length="middle"/>
<pin name="B2B_B0_L8_P(C9)" x="-27.94" y="7.62" length="middle"/>
<pin name="B2B_B0_L34_P(B10)" x="-27.94" y="2.54" length="middle"/>
<pin name="B2B_B0_L34_N(A10)" x="-27.94" y="5.08" length="middle"/>
<pin name="B2B_PROGB" x="38.1" y="48.26" length="middle" rot="R180"/>
<pin name="B2B_B3_L60_N(B1)" x="38.1" y="43.18" length="middle" rot="R180"/>
<pin name="HSWAPEN(A3)" x="38.1" y="45.72" length="middle" rot="R180"/>
<pin name="B2B_B3_L60_P(B2)" x="38.1" y="40.64" length="middle" rot="R180"/>
<pin name="B2B_B3_L9_N(T3)" x="38.1" y="35.56" length="middle" rot="R180"/>
<pin name="B2B_B3_L9_P(T4)" x="38.1" y="33.02" length="middle" rot="R180"/>
<pin name="B2B_B0_L3_P(D6)" x="38.1" y="30.48" length="middle" rot="R180"/>
<pin name="B2B_B0_L3_N(C6)" x="38.1" y="27.94" length="middle" rot="R180"/>
<pin name="B2B_B3_L59_N(H8)" x="38.1" y="20.32" length="middle" rot="R180"/>
<pin name="B2B_B3_L59_P(J7)" x="38.1" y="22.86" length="middle" rot="R180"/>
<pin name="B2B_B0_L32_P(D7)" x="38.1" y="17.78" length="middle" rot="R180"/>
<pin name="B2B_B0_L32_N(D8)" x="38.1" y="15.24" length="middle" rot="R180"/>
<pin name="B2B_B0_L7_N(C8)" x="38.1" y="10.16" length="middle" rot="R180"/>
<pin name="B2B_B0_L7_P(D9)" x="38.1" y="7.62" length="middle" rot="R180"/>
<pin name="B2B_B0_L33_N(C10)" x="38.1" y="5.08" length="middle" rot="R180"/>
<pin name="B2B_B0_L33_P(D10)" x="38.1" y="2.54" length="middle" rot="R180"/>
<pin name="B2B_B0_L35_N(A11)" x="-27.94" y="-2.54" length="middle"/>
<pin name="B2B_B0_L35_P(C11)" x="-27.94" y="-5.08" length="middle"/>
<pin name="B2B_B0_L37_N(A12)" x="-27.94" y="-7.62" length="middle"/>
<pin name="B2B_B0_L37_P(B12)" x="-27.94" y="-10.16" length="middle"/>
<pin name="B2B_B0_L38_N(A13)" x="-27.94" y="-15.24" length="middle"/>
<pin name="B2B_B0_L38_P(C13)" x="-27.94" y="-17.78" length="middle"/>
<pin name="B2B_B0_L50_N(A14)" x="-27.94" y="-20.32" length="middle"/>
<pin name="B2B_B0_L50_P(B14)" x="-27.94" y="-22.86" length="middle"/>
<pin name="B2B_B0_L51_N(A15)" x="-27.94" y="-27.94" length="middle"/>
<pin name="B2B_B0_L51_P(C15)" x="-27.94" y="-30.48" length="middle"/>
<pin name="B2B_B0_L63_N(A16)" x="-27.94" y="-33.02" length="middle"/>
<pin name="B2B_B0_L63_P(B16)" x="-27.94" y="-35.56" length="middle"/>
<pin name="B2B_B0_L64_N(A17)" x="-27.94" y="-40.64" length="middle"/>
<pin name="B2B_B0_L64_P(C17)" x="-27.94" y="-43.18" length="middle"/>
<pin name="B2B_B0_L65_N(A18)" x="-27.94" y="-45.72" length="middle"/>
<pin name="B2B_B0_L65_P(B18)" x="-27.94" y="-48.26" length="middle"/>
<pin name="B2B_B0_L36_P(D11)" x="38.1" y="-2.54" length="middle" rot="R180"/>
<pin name="B2B_B0_L36_N(C12)" x="38.1" y="-5.08" length="middle" rot="R180"/>
<pin name="B2B_B0_L49_P(D14)" x="38.1" y="-7.62" length="middle" rot="R180"/>
<pin name="B2B_B0_L49_N(C14)" x="38.1" y="-10.16" length="middle" rot="R180"/>
<pin name="B2B_B0_L62_P(D15)" x="38.1" y="-15.24" length="middle" rot="R180"/>
<pin name="B2B_B0_L62_N(C16)" x="38.1" y="-17.78" length="middle" rot="R180"/>
<pin name="B2B_B0_L66_P(E16)" x="38.1" y="-20.32" length="middle" rot="R180"/>
<pin name="B2B_B0_L66_N(D17)" x="38.1" y="-22.86" length="middle" rot="R180"/>
<pin name="B2B_B1_L10_P(F16)" x="38.1" y="-27.94" length="middle" rot="R180"/>
<pin name="B2B_B1_L10_N(F17)" x="38.1" y="-30.48" length="middle" rot="R180"/>
<pin name="B2B_B1_L9_P(G16)" x="38.1" y="-33.02" length="middle" rot="R180"/>
<pin name="B2B_B1_L9_N(G17)" x="38.1" y="-35.56" length="middle" rot="R180"/>
<pin name="B2B_B1_L21_N(J16)" x="38.1" y="-40.64" length="middle" rot="R180"/>
<pin name="B2B_B1_L61_P(L17)" x="38.1" y="-45.72" length="middle" rot="R180"/>
<pin name="B2B_B1_L21_P(K16)" x="38.1" y="-43.18" length="middle" rot="R180"/>
<pin name="B2B_B1_L61_N(K18)" x="38.1" y="-48.26" length="middle" rot="R180"/>
<pin name="B2B_B1_L20_P(A20)" x="-27.94" y="-53.34" length="middle"/>
<pin name="B2B_B1_L20_N(A21)" x="-27.94" y="-55.88" length="middle"/>
<pin name="B2B_B1_L19_P(B21)" x="-27.94" y="-58.42" length="middle"/>
<pin name="B2B_B1_L19_N(B22)" x="-27.94" y="-60.96" length="middle"/>
<pin name="B2B_B1_L59(P19)" x="-27.94" y="-63.5" length="middle"/>
<wire x1="33.02" y1="50.8" x2="-22.86" y2="50.8" width="0.254" layer="94"/>
<wire x1="-22.86" y1="50.8" x2="-22.86" y2="-50.8" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-50.8" x2="-22.86" y2="-66.04" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-66.04" x2="33.02" y2="-66.04" width="0.254" layer="94"/>
<wire x1="33.02" y1="-66.04" x2="33.02" y2="-25.4" width="0.254" layer="94"/>
<text x="-22.86" y="53.34" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<text x="-20.32" y="-68.58" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="7.62" y="-21.59" size="1.778" layer="94" font="vector" rot="R90">B2B_B0_L34 to L38 are GCLK</text>
<text x="7.62" y="-60.96" size="1.778" layer="94" font="vector" rot="R90">bank1 is normally 1.5V</text>
<wire x1="33.02" y1="-25.4" x2="33.02" y2="19.05" width="0.254" layer="94"/>
<wire x1="33.02" y1="19.05" x2="33.02" y2="24.13" width="0.254" layer="94"/>
<wire x1="33.02" y1="24.13" x2="33.02" y2="31.75" width="0.254" layer="94"/>
<wire x1="33.02" y1="31.75" x2="33.02" y2="44.45" width="0.254" layer="94"/>
<wire x1="33.02" y1="44.45" x2="33.02" y2="50.8" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-50.8" x2="2.54" y2="-50.8" width="0.254" layer="94"/>
<wire x1="2.54" y1="-50.8" x2="2.54" y2="-25.4" width="0.254" layer="94"/>
<wire x1="2.54" y1="-25.4" x2="33.02" y2="-25.4" width="0.254" layer="94"/>
<wire x1="33.02" y1="19.05" x2="10.16" y2="19.05" width="0.254" layer="94"/>
<wire x1="10.16" y1="19.05" x2="10.16" y2="24.13" width="0.254" layer="94"/>
<wire x1="10.16" y1="24.13" x2="33.02" y2="24.13" width="0.254" layer="94"/>
<wire x1="33.02" y1="31.75" x2="10.16" y2="31.75" width="0.254" layer="94"/>
<wire x1="10.16" y1="31.75" x2="10.16" y2="44.45" width="0.254" layer="94"/>
<wire x1="10.16" y1="44.45" x2="33.02" y2="44.45" width="0.254" layer="94"/>
<text x="5.08" y="48.26" size="1.778" layer="94" font="vector" rot="R270">bank3 is 1.5V</text>
</symbol>
<symbol name="TE0600-JTAG">
<pin name="TMS(C18)" x="-7.62" y="-5.08" length="middle"/>
<pin name="TDI(E18)" x="-7.62" y="-2.54" length="middle"/>
<pin name="TDO(A19)" x="-7.62" y="0" length="middle"/>
<pin name="TCK(G15)" x="-7.62" y="2.54" length="middle"/>
<wire x1="-2.54" y1="5.08" x2="12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="5.08" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="-10.16" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="7.62" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="TE0600-PHY">
<pin name="PHY_MDI0_P" x="-22.86" y="10.16" length="middle"/>
<pin name="PHY_MDI0_N" x="-22.86" y="7.62" length="middle"/>
<pin name="PHY_MDI1_P" x="-22.86" y="2.54" length="middle"/>
<pin name="PHY_MDI1_N" x="-22.86" y="0" length="middle"/>
<pin name="PHY_AVDD" x="-22.86" y="-2.54" length="middle"/>
<pin name="PHY_MDI2_P" x="-22.86" y="-5.08" length="middle"/>
<pin name="PHY_MDI2_N" x="-22.86" y="-7.62" length="middle"/>
<pin name="PHY_MDI3_P" x="-22.86" y="-12.7" length="middle"/>
<pin name="PHY_MDI3_N" x="-22.86" y="-15.24" length="middle"/>
<pin name="PHY_L10" x="27.94" y="10.16" length="middle" rot="R180"/>
<pin name="PHY_L100" x="27.94" y="7.62" length="middle" rot="R180"/>
<pin name="PHY_L1000" x="27.94" y="5.08" length="middle" rot="R180"/>
<pin name="PHY_DUP" x="27.94" y="2.54" length="middle" rot="R180"/>
<pin name="PHY_LED_TX" x="27.94" y="0" length="middle" rot="R180"/>
<pin name="PHY_LED_RX" x="27.94" y="-2.54" length="middle" rot="R180"/>
<wire x1="-17.78" y1="12.7" x2="22.86" y2="12.7" width="0.254" layer="94"/>
<wire x1="22.86" y1="12.7" x2="22.86" y2="-17.78" width="0.254" layer="94"/>
<wire x1="22.86" y1="-17.78" x2="-17.78" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-17.78" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<text x="-17.78" y="15.24" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<text x="-17.78" y="-20.32" size="1.27" layer="95" font="vector">&gt;NAME</text>
</symbol>
<symbol name="TE0600-PWR">
<pin name="GND@1" x="-20.32" y="-10.16" length="middle" direction="sup"/>
<pin name="GND@2" x="-20.32" y="-12.7" length="middle" direction="sup"/>
<pin name="GND@3" x="-20.32" y="-15.24" length="middle" direction="sup"/>
<pin name="GND@4" x="-20.32" y="-17.78" length="middle" direction="sup"/>
<pin name="+3.3V@1" x="15.24" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@2" x="15.24" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@3" x="15.24" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@4" x="15.24" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@5" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@7" x="15.24" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@6" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="+3.3V@8" x="-20.32" y="0" length="middle" direction="pwr"/>
<pin name="GND@13" x="-20.32" y="-25.4" length="middle" direction="sup"/>
<pin name="+2.5V" x="-20.32" y="38.1" length="middle" direction="sup"/>
<pin name="+1.2V@1" x="-20.32" y="30.48" length="middle" direction="sup"/>
<pin name="+1.2V@2" x="-20.32" y="33.02" length="middle" direction="sup"/>
<pin name="GND@5" x="-20.32" y="-20.32" length="middle" direction="sup"/>
<pin name="GND@6" x="-20.32" y="-22.86" length="middle" direction="sup"/>
<pin name="GND@7" x="-20.32" y="-27.94" length="middle" direction="sup"/>
<pin name="GND@8" x="-20.32" y="-33.02" length="middle" direction="sup"/>
<pin name="GND@9" x="-20.32" y="-35.56" length="middle" direction="sup"/>
<pin name="GND@10" x="15.24" y="-10.16" length="middle" direction="sup" rot="R180"/>
<pin name="GND@11" x="15.24" y="-15.24" length="middle" direction="sup" rot="R180"/>
<pin name="GND@12" x="15.24" y="-17.78" length="middle" direction="sup" rot="R180"/>
<pin name="GND@14" x="-20.32" y="-30.48" length="middle" direction="sup"/>
<pin name="GND@15" x="-20.32" y="-7.62" length="middle" direction="sup"/>
<pin name="GND@16" x="15.24" y="-7.62" length="middle" direction="sup" rot="R180"/>
<pin name="GND@17" x="15.24" y="-12.7" length="middle" direction="sup" rot="R180"/>
<pin name="GND@18" x="15.24" y="-20.32" length="middle" direction="sup" rot="R180"/>
<pin name="+3.3V@9" x="-20.32" y="15.24" length="middle" direction="pwr"/>
<pin name="+3.3V@10" x="-20.32" y="12.7" length="middle" direction="pwr"/>
<pin name="+3.3V@11" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="+3.3V@13" x="-20.32" y="5.08" length="middle" direction="pwr"/>
<pin name="+3.3V@12" x="-20.32" y="7.62" length="middle" direction="pwr"/>
<pin name="+3.3V@14" x="-20.32" y="2.54" length="middle" direction="pwr"/>
<pin name="GND@19" x="-20.32" y="-38.1" length="middle" direction="sup"/>
<pin name="GND@20" x="-20.32" y="-40.64" length="middle" direction="sup"/>
<pin name="GND@21" x="-20.32" y="-50.8" length="middle" direction="sup"/>
<pin name="VCCIO0@1" x="15.24" y="33.02" length="middle" rot="R180"/>
<pin name="VCCIO0@2" x="15.24" y="30.48" length="middle" rot="R180"/>
<pin name="VCCIO0@3" x="15.24" y="27.94" length="middle" rot="R180"/>
<pin name="VCCIO0@5" x="15.24" y="22.86" length="middle" rot="R180"/>
<pin name="VCCIO0@4" x="15.24" y="25.4" length="middle" rot="R180"/>
<pin name="+1.5V" x="-20.32" y="20.32" length="middle" direction="sup"/>
<pin name="GND@22" x="15.24" y="-22.86" length="middle" direction="sup" rot="R180"/>
<pin name="GND@23" x="15.24" y="-25.4" length="middle" direction="sup" rot="R180"/>
<pin name="GND@30" x="15.24" y="-48.26" length="middle" direction="sup" rot="R180"/>
<pin name="GND@31" x="-20.32" y="-48.26" length="middle" direction="sup"/>
<pin name="GND@32" x="15.24" y="-45.72" length="middle" direction="sup" rot="R180"/>
<pin name="GND@33" x="-20.32" y="-45.72" length="middle" direction="sup"/>
<pin name="GND@34" x="-20.32" y="-43.18" length="middle" direction="sup"/>
<pin name="GND@24" x="15.24" y="-27.94" length="middle" direction="sup" rot="R180"/>
<pin name="GND@25" x="15.24" y="-30.48" length="middle" direction="sup" rot="R180"/>
<pin name="GND@26" x="15.24" y="-33.02" length="middle" direction="sup" rot="R180"/>
<pin name="GND@27" x="15.24" y="-35.56" length="middle" direction="sup" rot="R180"/>
<pin name="VCCAUX" x="-20.32" y="25.4" length="middle" direction="sup"/>
<pin name="GND@28" x="15.24" y="-38.1" length="middle" direction="sup" rot="R180"/>
<pin name="GND@29" x="15.24" y="-40.64" length="middle" direction="sup" rot="R180"/>
<pin name="GND@35" x="15.24" y="-43.18" length="middle" direction="sup" rot="R180"/>
<wire x1="-15.24" y1="40.64" x2="10.16" y2="40.64" width="0.254" layer="94"/>
<wire x1="10.16" y1="40.64" x2="10.16" y2="-60.96" width="0.254" layer="94"/>
<wire x1="10.16" y1="-60.96" x2="-15.24" y2="-60.96" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-60.96" x2="-15.24" y2="40.64" width="0.254" layer="94"/>
<text x="-15.24" y="43.18" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<text x="-15.24" y="-63.5" size="1.27" layer="95" font="vector">&gt;NAME</text>
<pin name="CASE@2" x="-20.32" y="-55.88" length="middle" direction="sup"/>
<pin name="CASE@1" x="15.24" y="-55.88" length="middle" direction="sup" rot="R180"/>
<pin name="CASE@3" x="-20.32" y="-58.42" length="middle" direction="sup"/>
<pin name="CASE@4" x="15.24" y="-58.42" length="middle" direction="sup" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TE0600">
<description>&lt;h1&gt;TE0600&lt;/h1&gt;

&lt;h2&gt;datasheets&lt;/h2&gt;
&lt;a href="http://www.samtec.com/ProductInformation/TechnicalSpecifications/Prints.aspx?series=LSHM"&gt;LSHM Connector&lt;/a&gt;
&lt;br&gt;
&lt;a href="http://www.trenz-electronic.de/de/download/d0/Trenz_Electronic/d1/TE0600-GigaBee_series/d2/TE0600/d3/documents.html"&gt;TE0600 Trenz archive&lt;/a&gt;
&lt;br&gt;&lt;br&gt;
update 12.04.2013:
&lt;br&gt;
- FPGA pins added to symbols
&lt;br&gt;
&lt;h3&gt;designed by:&lt;/h3&gt;

steffen.mauch (at) gmail.com
&lt;br&gt;
copyright (c) 2012/2013</description>
<gates>
<gate name="G$1" symbol="TE0600-J1" x="53.34" y="5.08"/>
<gate name="G$2" symbol="TE0600-J2" x="-55.88" y="10.16"/>
<gate name="G$3" symbol="TE0600-JTAG" x="-73.66" y="-91.44"/>
<gate name="G$4" symbol="TE0600-PHY" x="43.18" y="-91.44"/>
<gate name="G$5" symbol="TE0600-PWR" x="-12.7" y="-154.94"/>
</gates>
<devices>
<device name="" package="TE0600">
<connects>
<connect gate="G$1" pin="AWAKE(T19)" pad="J1-85"/>
<connect gate="G$1" pin="B2B_B2_L10_N(R15)" pad="J1-94"/>
<connect gate="G$1" pin="B2B_B2_L10_P(R16)" pad="J1-96"/>
<connect gate="G$1" pin="B2B_B2_L11_N(W17)" pad="J1-68"/>
<connect gate="G$1" pin="B2B_B2_L11_P(V17)" pad="J1-66"/>
<connect gate="G$1" pin="B2B_B2_L15_N(AB17)" pad="J1-71"/>
<connect gate="G$1" pin="B2B_B2_L15_P(Y17)" pad="J1-69"/>
<connect gate="G$1" pin="B2B_B2_L18_N(W13)" pad="J1-58"/>
<connect gate="G$1" pin="B2B_B2_L18_P(V13)" pad="J1-56"/>
<connect gate="G$1" pin="B2B_B2_L21_N(AB15)" pad="J1-67"/>
<connect gate="G$1" pin="B2B_B2_L21_P(Y15)" pad="J1-65"/>
<connect gate="G$1" pin="B2B_B2_L29_N(Y12)" pad="J1-92"/>
<connect gate="G$1" pin="B2B_B2_L2_N(AB21)" pad="J1-98"/>
<connect gate="G$1" pin="B2B_B2_L2_P(AA21)" pad="J1-100"/>
<connect gate="G$1" pin="B2B_B2_L31_N(AB12)" pad="J1-75"/>
<connect gate="G$1" pin="B2B_B2_L32_N(AB11)" pad="J1-32"/>
<connect gate="G$1" pin="B2B_B2_L41_N(AB10)" pad="J1-59"/>
<connect gate="G$1" pin="B2B_B2_L41_P(AA10)" pad="J1-61"/>
<connect gate="G$1" pin="B2B_B2_L42_N(W11)" pad="J1-50"/>
<connect gate="G$1" pin="B2B_B2_L42_P(V11)" pad="J1-52"/>
<connect gate="G$1" pin="B2B_B2_L43_N(AB9)" pad="J1-55"/>
<connect gate="G$1" pin="B2B_B2_L43_P(Y9)" pad="J1-57"/>
<connect gate="G$1" pin="B2B_B2_L44_N(Y10)" pad="J1-46"/>
<connect gate="G$1" pin="B2B_B2_L44_P(W10)" pad="J1-48"/>
<connect gate="G$1" pin="B2B_B2_L45_N(AB8)" pad="J1-49"/>
<connect gate="G$1" pin="B2B_B2_L45_P(AA8)" pad="J1-51"/>
<connect gate="G$1" pin="B2B_B2_L48_N(AB7)" pad="J1-45"/>
<connect gate="G$1" pin="B2B_B2_L48_P(Y7)" pad="J1-47"/>
<connect gate="G$1" pin="B2B_B2_L49_N(AB6)" pad="J1-35"/>
<connect gate="G$1" pin="B2B_B2_L49_P(AA6)" pad="J1-37"/>
<connect gate="G$1" pin="B2B_B2_L4_N(T17)" pad="J1-86"/>
<connect gate="G$1" pin="B2B_B2_L4_P(T18)" pad="J1-88"/>
<connect gate="G$1" pin="B2B_B2_L57_N(AB4)" pad="J1-31"/>
<connect gate="G$1" pin="B2B_B2_L57_P(AA4)" pad="J1-33"/>
<connect gate="G$1" pin="B2B_B2_L59_N(R8)" pad="J1-40"/>
<connect gate="G$1" pin="B2B_B2_L59_P(R9)" pad="J1-42"/>
<connect gate="G$1" pin="B2B_B2_L5_N(AB19)" pad="J1-78"/>
<connect gate="G$1" pin="B2B_B2_L5_P(Y19)" pad="J1-76"/>
<connect gate="G$1" pin="B2B_B2_L60_N(R7)" pad="J1-38"/>
<connect gate="G$1" pin="B2B_B2_L60_P(T7)" pad="J1-36"/>
<connect gate="G$1" pin="B2B_B2_L6_N(Y18)" pad="J1-72"/>
<connect gate="G$1" pin="B2B_B2_L6_P(W18)" pad="J1-70"/>
<connect gate="G$1" pin="B2B_B2_L8_N(U16)" pad="J1-60"/>
<connect gate="G$1" pin="B2B_B2_L8_P(U17)" pad="J1-62"/>
<connect gate="G$1" pin="B2B_B2_L9_N(V18)" pad="J1-80"/>
<connect gate="G$1" pin="B2B_B2_L9_P(V19)" pad="J1-82"/>
<connect gate="G$1" pin="CCLK(Y21)" pad="J1-91"/>
<connect gate="G$1" pin="CSO_B(T5)" pad="J1-87"/>
<connect gate="G$1" pin="EN" pad="J1-28"/>
<connect gate="G$1" pin="INIT(T6)" pad="J1-30"/>
<connect gate="G$1" pin="MISO(AA20)" pad="J1-93"/>
<connect gate="G$1" pin="MOSI(AB20)" pad="J1-95"/>
<connect gate="G$1" pin="MOSI(U14)" pad="J1-99"/>
<connect gate="G$1" pin="MOSI3(U13)" pad="J1-97"/>
<connect gate="G$1" pin="RFUSE(P15)" pad="J1-83"/>
<connect gate="G$1" pin="SUSPEND(N15)" pad="J1-77"/>
<connect gate="G$1" pin="VBATT(R17)" pad="J1-79"/>
<connect gate="G$1" pin="VFS(P16)" pad="J1-81"/>
<connect gate="G$2" pin="/MR" pad="J2-18"/>
<connect gate="G$2" pin="B2B_B0_L1(A4)" pad="J2-14"/>
<connect gate="G$2" pin="B2B_B0_L2_N(A5)" pad="J2-24"/>
<connect gate="G$2" pin="B2B_B0_L2_P(C5)" pad="J2-22"/>
<connect gate="G$2" pin="B2B_B0_L32_N(D8)" pad="J2-37"/>
<connect gate="G$2" pin="B2B_B0_L32_P(D7)" pad="J2-35"/>
<connect gate="G$2" pin="B2B_B0_L33_N(C10)" pad="J2-45"/>
<connect gate="G$2" pin="B2B_B0_L33_P(D10)" pad="J2-47"/>
<connect gate="G$2" pin="B2B_B0_L34_N(A10)" pad="J2-46"/>
<connect gate="G$2" pin="B2B_B0_L34_P(B10)" pad="J2-48"/>
<connect gate="G$2" pin="B2B_B0_L35_N(A11)" pad="J2-52"/>
<connect gate="G$2" pin="B2B_B0_L35_P(C11)" pad="J2-54"/>
<connect gate="G$2" pin="B2B_B0_L36_N(C12)" pad="J2-53"/>
<connect gate="G$2" pin="B2B_B0_L36_P(D11)" pad="J2-51"/>
<connect gate="G$2" pin="B2B_B0_L37_N(A12)" pad="J2-56"/>
<connect gate="G$2" pin="B2B_B0_L37_P(B12)" pad="J2-58"/>
<connect gate="G$2" pin="B2B_B0_L38_N(A13)" pad="J2-62"/>
<connect gate="G$2" pin="B2B_B0_L38_P(C13)" pad="J2-64"/>
<connect gate="G$2" pin="B2B_B0_L3_N(C6)" pad="J2-27"/>
<connect gate="G$2" pin="B2B_B0_L3_P(D6)" pad="J2-25"/>
<connect gate="G$2" pin="B2B_B0_L49_N(C14)" pad="J2-57"/>
<connect gate="G$2" pin="B2B_B0_L49_P(D14)" pad="J2-55"/>
<connect gate="G$2" pin="B2B_B0_L4_N(A6)" pad="J2-26"/>
<connect gate="G$2" pin="B2B_B0_L4_P(B6)" pad="J2-28"/>
<connect gate="G$2" pin="B2B_B0_L50_N(A14)" pad="J2-66"/>
<connect gate="G$2" pin="B2B_B0_L50_P(B14)" pad="J2-68"/>
<connect gate="G$2" pin="B2B_B0_L51_N(A15)" pad="J2-72"/>
<connect gate="G$2" pin="B2B_B0_L51_P(C15)" pad="J2-74"/>
<connect gate="G$2" pin="B2B_B0_L5_N(A7)" pad="J2-32"/>
<connect gate="G$2" pin="B2B_B0_L5_P(C7)" pad="J2-34"/>
<connect gate="G$2" pin="B2B_B0_L62_N(C16)" pad="J2-63"/>
<connect gate="G$2" pin="B2B_B0_L62_P(D15)" pad="J2-61"/>
<connect gate="G$2" pin="B2B_B0_L63_N(A16)" pad="J2-76"/>
<connect gate="G$2" pin="B2B_B0_L63_P(B16)" pad="J2-78"/>
<connect gate="G$2" pin="B2B_B0_L64_N(A17)" pad="J2-82"/>
<connect gate="G$2" pin="B2B_B0_L64_P(C17)" pad="J2-84"/>
<connect gate="G$2" pin="B2B_B0_L65_N(A18)" pad="J2-86"/>
<connect gate="G$2" pin="B2B_B0_L65_P(B18)" pad="J2-88"/>
<connect gate="G$2" pin="B2B_B0_L66_N(D17)" pad="J2-67"/>
<connect gate="G$2" pin="B2B_B0_L66_P(E16)" pad="J2-65"/>
<connect gate="G$2" pin="B2B_B0_L6_N(A8)" pad="J2-36"/>
<connect gate="G$2" pin="B2B_B0_L6_P(B8)" pad="J2-38"/>
<connect gate="G$2" pin="B2B_B0_L7_N(C8)" pad="J2-41"/>
<connect gate="G$2" pin="B2B_B0_L7_P(D9)" pad="J2-43"/>
<connect gate="G$2" pin="B2B_B0_L8_N(A9)" pad="J2-42"/>
<connect gate="G$2" pin="B2B_B0_L8_P(C9)" pad="J2-44"/>
<connect gate="G$2" pin="B2B_B1_L10_N(F17)" pad="J2-73"/>
<connect gate="G$2" pin="B2B_B1_L10_P(F16)" pad="J2-71"/>
<connect gate="G$2" pin="B2B_B1_L19_N(B22)" pad="J2-98"/>
<connect gate="G$2" pin="B2B_B1_L19_P(B21)" pad="J2-96"/>
<connect gate="G$2" pin="B2B_B1_L20_N(A21)" pad="J2-94"/>
<connect gate="G$2" pin="B2B_B1_L20_P(A20)" pad="J2-92"/>
<connect gate="G$2" pin="B2B_B1_L21_N(J16)" pad="J2-81"/>
<connect gate="G$2" pin="B2B_B1_L21_P(K16)" pad="J2-83"/>
<connect gate="G$2" pin="B2B_B1_L59(P19)" pad="J2-100"/>
<connect gate="G$2" pin="B2B_B1_L61_N(K18)" pad="J2-87"/>
<connect gate="G$2" pin="B2B_B1_L61_P(L17)" pad="J2-85"/>
<connect gate="G$2" pin="B2B_B1_L9_N(G17)" pad="J2-77"/>
<connect gate="G$2" pin="B2B_B1_L9_P(G16)" pad="J2-75"/>
<connect gate="G$2" pin="B2B_B3_L59_N(H8)" pad="J2-33"/>
<connect gate="G$2" pin="B2B_B3_L59_P(J7)" pad="J2-31"/>
<connect gate="G$2" pin="B2B_B3_L60_N(B1)" pad="J2-15"/>
<connect gate="G$2" pin="B2B_B3_L60_P(B2)" pad="J2-17"/>
<connect gate="G$2" pin="B2B_B3_L9_N(T3)" pad="J2-21"/>
<connect gate="G$2" pin="B2B_B3_L9_P(T4)" pad="J2-23"/>
<connect gate="G$2" pin="B2B_PROGB" pad="J2-11"/>
<connect gate="G$2" pin="HSWAPEN(A3)" pad="J2-13"/>
<connect gate="G$2" pin="PFI" pad="J2-16"/>
<connect gate="G$3" pin="TCK(G15)" pad="J2-99"/>
<connect gate="G$3" pin="TDI(E18)" pad="J2-95"/>
<connect gate="G$3" pin="TDO(A19)" pad="J2-97"/>
<connect gate="G$3" pin="TMS(C18)" pad="J2-93"/>
<connect gate="G$4" pin="PHY_AVDD" pad="J1-14"/>
<connect gate="G$4" pin="PHY_DUP" pad="J1-23"/>
<connect gate="G$4" pin="PHY_L10" pad="J1-17"/>
<connect gate="G$4" pin="PHY_L100" pad="J1-19"/>
<connect gate="G$4" pin="PHY_L1000" pad="J1-21"/>
<connect gate="G$4" pin="PHY_LED_RX" pad="J1-27"/>
<connect gate="G$4" pin="PHY_LED_TX" pad="J1-25"/>
<connect gate="G$4" pin="PHY_MDI0_N" pad="J1-6"/>
<connect gate="G$4" pin="PHY_MDI0_P" pad="J1-4"/>
<connect gate="G$4" pin="PHY_MDI1_N" pad="J1-12"/>
<connect gate="G$4" pin="PHY_MDI1_P" pad="J1-10"/>
<connect gate="G$4" pin="PHY_MDI2_N" pad="J1-18"/>
<connect gate="G$4" pin="PHY_MDI2_P" pad="J1-16"/>
<connect gate="G$4" pin="PHY_MDI3_N" pad="J1-24"/>
<connect gate="G$4" pin="PHY_MDI3_P" pad="J1-22"/>
<connect gate="G$5" pin="+1.2V@1" pad="J1-41"/>
<connect gate="G$5" pin="+1.2V@2" pad="J1-43"/>
<connect gate="G$5" pin="+1.5V" pad="J2-19"/>
<connect gate="G$5" pin="+2.5V" pad="J1-39"/>
<connect gate="G$5" pin="+3.3V@1" pad="J1-1"/>
<connect gate="G$5" pin="+3.3V@10" pad="J2-4"/>
<connect gate="G$5" pin="+3.3V@11" pad="J2-6"/>
<connect gate="G$5" pin="+3.3V@12" pad="J2-8"/>
<connect gate="G$5" pin="+3.3V@13" pad="J2-10"/>
<connect gate="G$5" pin="+3.3V@14" pad="J2-12"/>
<connect gate="G$5" pin="+3.3V@2" pad="J1-3"/>
<connect gate="G$5" pin="+3.3V@3" pad="J1-5"/>
<connect gate="G$5" pin="+3.3V@4" pad="J1-7"/>
<connect gate="G$5" pin="+3.3V@5" pad="J1-9"/>
<connect gate="G$5" pin="+3.3V@6" pad="J1-11"/>
<connect gate="G$5" pin="+3.3V@7" pad="J1-13"/>
<connect gate="G$5" pin="+3.3V@8" pad="J1-15"/>
<connect gate="G$5" pin="+3.3V@9" pad="J2-2"/>
<connect gate="G$5" pin="CASE@1" pad="CASE@1"/>
<connect gate="G$5" pin="CASE@2" pad="CASE@2"/>
<connect gate="G$5" pin="CASE@3" pad="CASE@3"/>
<connect gate="G$5" pin="CASE@4" pad="CASE@4"/>
<connect gate="G$5" pin="GND@1" pad="DRILL1"/>
<connect gate="G$5" pin="GND@10" pad="J1-34"/>
<connect gate="G$5" pin="GND@11" pad="J1-44"/>
<connect gate="G$5" pin="GND@12" pad="J1-53"/>
<connect gate="G$5" pin="GND@13" pad="J1-54"/>
<connect gate="G$5" pin="GND@14" pad="J1-63"/>
<connect gate="G$5" pin="GND@15" pad="J1-64"/>
<connect gate="G$5" pin="GND@16" pad="J1-73"/>
<connect gate="G$5" pin="GND@17" pad="J1-74"/>
<connect gate="G$5" pin="GND@18" pad="J1-84"/>
<connect gate="G$5" pin="GND@19" pad="J1-89"/>
<connect gate="G$5" pin="GND@2" pad="DRILL3"/>
<connect gate="G$5" pin="GND@20" pad="J1-90"/>
<connect gate="G$5" pin="GND@21" pad="J2-20"/>
<connect gate="G$5" pin="GND@22" pad="J2-29"/>
<connect gate="G$5" pin="GND@23" pad="J2-30"/>
<connect gate="G$5" pin="GND@24" pad="J2-39"/>
<connect gate="G$5" pin="GND@25" pad="J2-40"/>
<connect gate="G$5" pin="GND@26" pad="J2-49"/>
<connect gate="G$5" pin="GND@27" pad="J2-50"/>
<connect gate="G$5" pin="GND@28" pad="J2-59"/>
<connect gate="G$5" pin="GND@29" pad="J2-60"/>
<connect gate="G$5" pin="GND@3" pad="DRILL2"/>
<connect gate="G$5" pin="GND@30" pad="J2-69"/>
<connect gate="G$5" pin="GND@31" pad="J2-70"/>
<connect gate="G$5" pin="GND@32" pad="J2-79"/>
<connect gate="G$5" pin="GND@33" pad="J2-80"/>
<connect gate="G$5" pin="GND@34" pad="J2-89"/>
<connect gate="G$5" pin="GND@35" pad="J2-90"/>
<connect gate="G$5" pin="GND@4" pad="DRILL4"/>
<connect gate="G$5" pin="GND@5" pad="J1-2"/>
<connect gate="G$5" pin="GND@6" pad="J1-8"/>
<connect gate="G$5" pin="GND@7" pad="J1-20"/>
<connect gate="G$5" pin="GND@8" pad="J1-26"/>
<connect gate="G$5" pin="GND@9" pad="J1-29"/>
<connect gate="G$5" pin="VCCAUX" pad="J2-91"/>
<connect gate="G$5" pin="VCCIO0@1" pad="J2-9"/>
<connect gate="G$5" pin="VCCIO0@2" pad="J2-7"/>
<connect gate="G$5" pin="VCCIO0@3" pad="J2-5"/>
<connect gate="G$5" pin="VCCIO0@4" pad="J2-3"/>
<connect gate="G$5" pin="VCCIO0@5" pad="J2-1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,8" urn="urn:adsk.eagle:footprint:30809/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.762" y1="0.762" x2="-0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.508" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.762" y2="-0.508" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="1,6/0,9" urn="urn:adsk.eagle:footprint:30812/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.508" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.762" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.762" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,15/1,0" urn="urn:adsk.eagle:footprint:30813/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.143" y1="-1.143" x2="1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-1.143" x2="0.635" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.635" x2="1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="1.143" x2="0.635" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.143" x2="-1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="1.143" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-0.635" y2="-1.143" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,8" urn="urn:adsk.eagle:footprint:30820/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,9" urn="urn:adsk.eagle:footprint:30821/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,0" urn="urn:adsk.eagle:footprint:30810/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,1" urn="urn:adsk.eagle:footprint:30818/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,1" urn="urn:adsk.eagle:footprint:30814/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,2" urn="urn:adsk.eagle:footprint:30824/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1938" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,3" urn="urn:adsk.eagle:footprint:30815/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,1" urn="urn:adsk.eagle:footprint:30811/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,3" urn="urn:adsk.eagle:footprint:30816/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,4" urn="urn:adsk.eagle:footprint:30817/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.397" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="4,16O1,6" urn="urn:adsk.eagle:footprint:30825/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<pad name="1" x="0" y="0" drill="1.6002" diameter="4.1656" shape="octagon"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-2.1" y="2.2" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="5-1,8" urn="urn:adsk.eagle:footprint:30826/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.1684" y1="2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.1684" y1="2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="1.8288" dy="5.08" layer="1"/>
<text x="-1.524" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="5-2,5" urn="urn:adsk.eagle:footprint:30827/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="-1.778" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="SMD1,27-2,54" urn="urn:adsk.eagle:footprint:30822/1" library_version="1">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.8" y="-2.4" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="SMD2,54-5,08" urn="urn:adsk.eagle:footprint:30823/1" library_version="1">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="1,6/0,8" urn="urn:adsk.eagle:package:30830/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,8"/>
</packageinstances>
</package3d>
<package3d name="1,6/0,9" urn="urn:adsk.eagle:package:30840/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,9"/>
</packageinstances>
</package3d>
<package3d name="2,15/1,0" urn="urn:adsk.eagle:package:30831/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,15/1,0"/>
</packageinstances>
</package3d>
<package3d name="2,54/0,8" urn="urn:adsk.eagle:package:30838/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/0,8"/>
</packageinstances>
</package3d>
<package3d name="2,54/0,9" urn="urn:adsk.eagle:package:30847/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/0,9"/>
</packageinstances>
</package3d>
<package3d name="2,54/1,0" urn="urn:adsk.eagle:package:30828/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/1,0"/>
</packageinstances>
</package3d>
<package3d name="2,54/1,1" urn="urn:adsk.eagle:package:30836/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,1" urn="urn:adsk.eagle:package:30832/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,2" urn="urn:adsk.eagle:package:30842/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,2"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,3" urn="urn:adsk.eagle:package:30833/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,3"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,1" urn="urn:adsk.eagle:package:30829/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,3" urn="urn:adsk.eagle:package:30834/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,3"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,4" urn="urn:adsk.eagle:package:30835/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,4"/>
</packageinstances>
</package3d>
<package3d name="4,16O1,6" urn="urn:adsk.eagle:package:30843/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="4,16O1,6"/>
</packageinstances>
</package3d>
<package3d name="5-1,8" urn="urn:adsk.eagle:package:30844/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="5-1,8"/>
</packageinstances>
</package3d>
<package3d name="5-2,5" urn="urn:adsk.eagle:package:30845/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="5-2,5"/>
</packageinstances>
</package3d>
<package3d name="SMD1,27-2,54" urn="urn:adsk.eagle:package:30839/1" type="box" library_version="1">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD1,27-2,54"/>
</packageinstances>
</package3d>
<package3d name="SMD2,54-5,08" urn="urn:adsk.eagle:package:30841/1" type="box" library_version="1">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD2,54-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="1">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WIREPAD" urn="urn:adsk.eagle:component:30861/1" prefix="PAD" library_version="1">
<description>&lt;b&gt;Wire PAD&lt;/b&gt; connect wire on PCB</description>
<gates>
<gate name="G$1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="1,6/0,8" package="1,6/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30830/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1,6/0,9" package="1,6/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30840/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,15/1,0" package="2,15/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30831/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,8" package="2,54/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30838/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,9" package="2,54/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30847/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,0" package="2,54/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30828/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,1" package="2,54/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30836/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,1" package="3,17/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30832/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,2" package="3,17/1,2">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30842/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,3" package="3,17/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30833/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,1" package="3,81/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30829/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,3" package="3,81/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30834/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,4" package="3,81/1,4">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30835/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4,16O1,6" package="4,16O1,6">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30843/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-1,8" package="5-1,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30844/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-2,5" package="5-2,5">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30845/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD1,27-254" package="SMD1,27-2,54">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30839/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2,54-5,08" package="SMD2,54-5,08">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30841/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="lib-te0600-eagle" deviceset="TE0600" device=""/>
<part name="PAD1" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD2" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD3" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD4" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD5" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD6" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
<part name="PAD7" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="2,54/0,9" package3d_urn="urn:adsk.eagle:package:30847/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-55.88" y="45.72" smashed="yes">
<attribute name="VALUE" x="-78.74" y="93.98" size="1.27" layer="96" font="vector"/>
<attribute name="NAME" x="-78.74" y="-7.62" size="1.27" layer="95" font="vector"/>
</instance>
<instance part="U$1" gate="G$2" x="25.4" y="45.72" smashed="yes">
<attribute name="VALUE" x="2.54" y="99.06" size="1.27" layer="96" font="vector"/>
<attribute name="NAME" x="5.08" y="-22.86" size="1.27" layer="95" font="vector"/>
</instance>
<instance part="U$1" gate="G$3" x="-73.66" y="-33.02" smashed="yes">
<attribute name="NAME" x="-76.2" y="-43.18" size="1.27" layer="95" font="vector"/>
<attribute name="VALUE" x="-76.2" y="-25.4" size="1.27" layer="96" font="vector"/>
</instance>
<instance part="U$1" gate="G$4" x="-22.86" y="-45.72" smashed="yes">
<attribute name="VALUE" x="-40.64" y="-30.48" size="1.27" layer="96" font="vector"/>
<attribute name="NAME" x="-40.64" y="-66.04" size="1.27" layer="95" font="vector"/>
</instance>
<instance part="U$1" gate="G$5" x="101.6" y="50.8" smashed="yes">
<attribute name="VALUE" x="86.36" y="93.98" size="1.27" layer="96" font="vector"/>
<attribute name="NAME" x="86.36" y="-12.7" size="1.27" layer="95" font="vector"/>
</instance>
<instance part="PAD1" gate="G$1" x="129.54" y="-27.94" smashed="yes">
<attribute name="NAME" x="128.397" y="-26.0858" size="1.778" layer="95"/>
<attribute name="VALUE" x="128.397" y="-31.242" size="1.778" layer="96"/>
</instance>
<instance part="PAD2" gate="G$1" x="139.7" y="-27.94" smashed="yes">
<attribute name="NAME" x="138.557" y="-26.0858" size="1.778" layer="95"/>
<attribute name="VALUE" x="138.557" y="-31.242" size="1.778" layer="96"/>
</instance>
<instance part="PAD3" gate="G$1" x="106.68" y="-35.56" smashed="yes">
<attribute name="NAME" x="105.537" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="105.537" y="-38.862" size="1.778" layer="96"/>
</instance>
<instance part="PAD4" gate="G$1" x="114.3" y="-35.56" smashed="yes">
<attribute name="NAME" x="113.157" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="113.157" y="-38.862" size="1.778" layer="96"/>
</instance>
<instance part="PAD5" gate="G$1" x="137.16" y="-35.56" smashed="yes">
<attribute name="NAME" x="136.017" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="136.017" y="-38.862" size="1.778" layer="96"/>
</instance>
<instance part="PAD6" gate="G$1" x="147.32" y="-35.56" smashed="yes">
<attribute name="NAME" x="146.177" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="146.177" y="-38.862" size="1.778" layer="96"/>
</instance>
<instance part="PAD7" gate="G$1" x="147.32" y="-35.56" smashed="yes">
<attribute name="NAME" x="146.177" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="146.177" y="-38.862" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND@30" class="0">
<segment>
<pinref part="U$1" gate="G$5" pin="GND@30"/>
<wire x1="116.84" y1="2.54" x2="139.7" y2="2.54" width="0.1524" layer="91"/>
<wire x1="139.7" y1="2.54" x2="139.7" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$5" pin="+3.3V@8"/>
<wire x1="81.28" y1="50.8" x2="71.12" y2="50.8" width="0.1524" layer="91"/>
<wire x1="71.12" y1="50.8" x2="71.12" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-27.94" x2="129.54" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="PAD6" gate="G$1" pin="P"/>
<pinref part="PAD7" gate="G$1" pin="P"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
