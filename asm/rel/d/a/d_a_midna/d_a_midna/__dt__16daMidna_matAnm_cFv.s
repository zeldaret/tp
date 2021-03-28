lbl_804C63E0:
/* 804C63E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C63E4  7C 08 02 A6 */	mflr r0
/* 804C63E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C63EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C63F0  93 C1 00 08 */	stw r30, 8(r1)
/* 804C63F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C63F8  7C 9F 23 78 */	mr r31, r4
/* 804C63FC  41 82 00 A8 */	beq lbl_804C64A4
/* 804C6400  3C 60 80 4C */	lis r3, __vt__16daMidna_matAnm_c@ha
/* 804C6404  38 03 6C C4 */	addi r0, r3, __vt__16daMidna_matAnm_c@l
/* 804C6408  90 1E 00 00 */	stw r0, 0(r30)
/* 804C640C  41 82 00 88 */	beq lbl_804C6494
/* 804C6410  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 804C6414  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 804C6418  90 1E 00 00 */	stw r0, 0(r30)
/* 804C641C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 804C6420  3C 80 80 4C */	lis r4, __dt__15J3DTevKColorAnmFv@ha
/* 804C6424  38 84 D0 98 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 804C6428  38 A0 00 08 */	li r5, 8
/* 804C642C  38 C0 00 04 */	li r6, 4
/* 804C6430  4B E9 B8 B8 */	b __destroy_arr
/* 804C6434  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 804C6438  3C 80 80 4C */	lis r4, __dt__14J3DTevColorAnmFv@ha
/* 804C643C  38 84 D0 EC */	addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 804C6440  38 A0 00 08 */	li r5, 8
/* 804C6444  38 C0 00 04 */	li r6, 4
/* 804C6448  4B E9 B8 A0 */	b __destroy_arr
/* 804C644C  38 7E 00 54 */	addi r3, r30, 0x54
/* 804C6450  3C 80 80 4C */	lis r4, __dt__11J3DTexNoAnmFv@ha
/* 804C6454  38 84 D1 40 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 804C6458  38 A0 00 0C */	li r5, 0xc
/* 804C645C  38 C0 00 08 */	li r6, 8
/* 804C6460  4B E9 B8 88 */	b __destroy_arr
/* 804C6464  38 7E 00 14 */	addi r3, r30, 0x14
/* 804C6468  3C 80 80 4C */	lis r4, __dt__12J3DTexMtxAnmFv@ha
/* 804C646C  38 84 D1 AC */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 804C6470  38 A0 00 08 */	li r5, 8
/* 804C6474  38 C0 00 08 */	li r6, 8
/* 804C6478  4B E9 B8 70 */	b __destroy_arr
/* 804C647C  38 7E 00 04 */	addi r3, r30, 4
/* 804C6480  3C 80 80 4C */	lis r4, __dt__14J3DMatColorAnmFv@ha
/* 804C6484  38 84 D2 00 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 804C6488  38 A0 00 08 */	li r5, 8
/* 804C648C  38 C0 00 02 */	li r6, 2
/* 804C6490  4B E9 B8 58 */	b __destroy_arr
lbl_804C6494:
/* 804C6494  7F E0 07 35 */	extsh. r0, r31
/* 804C6498  40 81 00 0C */	ble lbl_804C64A4
/* 804C649C  7F C3 F3 78 */	mr r3, r30
/* 804C64A0  4B E0 88 9C */	b __dl__FPv
lbl_804C64A4:
/* 804C64A4  7F C3 F3 78 */	mr r3, r30
/* 804C64A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C64AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C64B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C64B4  7C 08 03 A6 */	mtlr r0
/* 804C64B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804C64BC  4E 80 00 20 */	blr 
