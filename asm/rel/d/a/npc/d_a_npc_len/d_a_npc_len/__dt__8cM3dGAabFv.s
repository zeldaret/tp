lbl_80A680B4:
/* 80A680B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A680B8  7C 08 02 A6 */	mflr r0
/* 80A680BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A680C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A680C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A680C8  41 82 00 1C */	beq lbl_80A680E4
/* 80A680CC  3C A0 80 A7 */	lis r5, __vt__8cM3dGAab@ha
/* 80A680D0  38 05 99 58 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A680D4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A680D8  7C 80 07 35 */	extsh. r0, r4
/* 80A680DC  40 81 00 08 */	ble lbl_80A680E4
/* 80A680E0  4B 86 6C 5C */	b __dl__FPv
lbl_80A680E4:
/* 80A680E4  7F E3 FB 78 */	mr r3, r31
/* 80A680E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A680EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A680F0  7C 08 03 A6 */	mtlr r0
/* 80A680F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A680F8  4E 80 00 20 */	blr 
