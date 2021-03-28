lbl_8009EF38:
/* 8009EF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EF3C  7C 08 02 A6 */	mflr r0
/* 8009EF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EF44  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8009EF48  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8009EF4C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8009EF50  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009EF54  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009EF58  2C 04 00 00 */	cmpwi r4, 0
/* 8009EF5C  40 82 00 0C */	bne lbl_8009EF68
/* 8009EF60  7C 04 03 78 */	mr r4, r0
/* 8009EF64  4B FF FD 3D */	bl headModelCallBack__9daAlink_cFi
lbl_8009EF68:
/* 8009EF68  38 60 00 01 */	li r3, 1
/* 8009EF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EF70  7C 08 03 A6 */	mtlr r0
/* 8009EF74  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EF78  4E 80 00 20 */	blr 
