lbl_802680B0:
/* 802680B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802680B4  7C 08 02 A6 */	mflr r0
/* 802680B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802680BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802680C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802680C4  41 82 00 1C */	beq lbl_802680E0
/* 802680C8  3C A0 80 3C */	lis r5, __vt__13cBgS_PolyInfo@ha
/* 802680CC  38 05 3F D0 */	addi r0, r5, __vt__13cBgS_PolyInfo@l
/* 802680D0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802680D4  7C 80 07 35 */	extsh. r0, r4
/* 802680D8  40 81 00 08 */	ble lbl_802680E0
/* 802680DC  48 06 6C 61 */	bl __dl__FPv
lbl_802680E0:
/* 802680E0  7F E3 FB 78 */	mr r3, r31
/* 802680E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802680E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802680EC  7C 08 03 A6 */	mtlr r0
/* 802680F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802680F4  4E 80 00 20 */	blr 
