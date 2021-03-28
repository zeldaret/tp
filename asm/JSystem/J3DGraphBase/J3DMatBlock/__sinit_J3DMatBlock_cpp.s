lbl_8032356C:
/* 8032356C  80 6D 83 E0 */	lwz r3, SizeOfLoadMatColors(r13)
/* 80323570  80 8D 83 E8 */	lwz r4, SizeOfLoadColorChans(r13)
/* 80323574  7C 03 22 14 */	add r0, r3, r4
/* 80323578  90 0D 90 58 */	stw r0, SizeOfJ3DColorBlockLightOffLoad(r13)
/* 8032357C  80 0D 83 E4 */	lwz r0, SizeOfLoadAmbColors(r13)
/* 80323580  7C 00 22 14 */	add r0, r0, r4
/* 80323584  7C 03 02 14 */	add r0, r3, r0
/* 80323588  90 0D 90 5C */	stw r0, SizeOfJ3DColorBlockAmbientOnLoad(r13)
/* 8032358C  4E 80 00 20 */	blr 
