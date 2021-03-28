lbl_80BD2BE4:
/* 80BD2BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2BE8  7C 08 02 A6 */	mflr r0
/* 80BD2BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2BF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD2BF8  41 82 00 1C */	beq lbl_80BD2C14
/* 80BD2BFC  3C A0 80 BD */	lis r5, __vt__8cM3dGCyl@ha
/* 80BD2C00  38 05 32 54 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BD2C04  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BD2C08  7C 80 07 35 */	extsh. r0, r4
/* 80BD2C0C  40 81 00 08 */	ble lbl_80BD2C14
/* 80BD2C10  4B 6F C1 2C */	b __dl__FPv
lbl_80BD2C14:
/* 80BD2C14  7F E3 FB 78 */	mr r3, r31
/* 80BD2C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2C20  7C 08 03 A6 */	mtlr r0
/* 80BD2C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2C28  4E 80 00 20 */	blr 
