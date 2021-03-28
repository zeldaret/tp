lbl_80285FD0:
/* 80285FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285FD4  7C 08 02 A6 */	mflr r0
/* 80285FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285FE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80285FE4  41 82 00 1C */	beq lbl_80286000
/* 80285FE8  3C A0 80 3C */	lis r5, __vt__Q27JStudio8TAdaptor@ha
/* 80285FEC  38 05 56 10 */	addi r0, r5, __vt__Q27JStudio8TAdaptor@l
/* 80285FF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80285FF4  7C 80 07 35 */	extsh. r0, r4
/* 80285FF8  40 81 00 08 */	ble lbl_80286000
/* 80285FFC  48 04 8D 41 */	bl __dl__FPv
lbl_80286000:
/* 80286000  7F E3 FB 78 */	mr r3, r31
/* 80286004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028600C  7C 08 03 A6 */	mtlr r0
/* 80286010  38 21 00 10 */	addi r1, r1, 0x10
/* 80286014  4E 80 00 20 */	blr 
