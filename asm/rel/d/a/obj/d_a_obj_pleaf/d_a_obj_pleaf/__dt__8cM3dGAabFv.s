lbl_80CB11C8:
/* 80CB11C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB11CC  7C 08 02 A6 */	mflr r0
/* 80CB11D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB11D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB11D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB11DC  41 82 00 1C */	beq lbl_80CB11F8
/* 80CB11E0  3C A0 80 CB */	lis r5, __vt__8cM3dGAab@ha
/* 80CB11E4  38 05 19 38 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CB11E8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CB11EC  7C 80 07 35 */	extsh. r0, r4
/* 80CB11F0  40 81 00 08 */	ble lbl_80CB11F8
/* 80CB11F4  4B 61 DB 48 */	b __dl__FPv
lbl_80CB11F8:
/* 80CB11F8  7F E3 FB 78 */	mr r3, r31
/* 80CB11FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1204  7C 08 03 A6 */	mtlr r0
/* 80CB1208  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB120C  4E 80 00 20 */	blr 
