lbl_80021FB8:
/* 80021FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021FBC  7C 08 02 A6 */	mflr r0
/* 80021FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021FC8  7C 7F 1B 78 */	mr r31, r3
/* 80021FCC  48 00 00 3D */	bl fpcLd_IsLoaded__Fs
/* 80021FD0  2C 03 00 01 */	cmpwi r3, 1
/* 80021FD4  40 82 00 1C */	bne lbl_80021FF0
/* 80021FD8  7F E3 FB 78 */	mr r3, r31
/* 80021FDC  48 00 00 75 */	bl fpcLd_Load__Fs
/* 80021FE0  2C 03 00 04 */	cmpwi r3, 4
/* 80021FE4  40 82 00 0C */	bne lbl_80021FF0
/* 80021FE8  38 60 00 01 */	li r3, 1
/* 80021FEC  48 00 00 08 */	b lbl_80021FF4
lbl_80021FF0:
/* 80021FF0  38 60 00 00 */	li r3, 0
lbl_80021FF4:
/* 80021FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021FFC  7C 08 03 A6 */	mtlr r0
/* 80022000  38 21 00 10 */	addi r1, r1, 0x10
/* 80022004  4E 80 00 20 */	blr 
