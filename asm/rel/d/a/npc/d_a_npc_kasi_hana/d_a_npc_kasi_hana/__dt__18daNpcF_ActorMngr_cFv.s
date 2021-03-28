lbl_80A2077C:
/* 80A2077C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20780  7C 08 02 A6 */	mflr r0
/* 80A20784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2078C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20790  41 82 00 1C */	beq lbl_80A207AC
/* 80A20794  3C A0 80 A2 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80A20798  38 05 17 AC */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80A2079C  90 1F 00 04 */	stw r0, 4(r31)
/* 80A207A0  7C 80 07 35 */	extsh. r0, r4
/* 80A207A4  40 81 00 08 */	ble lbl_80A207AC
/* 80A207A8  4B 8A E5 94 */	b __dl__FPv
lbl_80A207AC:
/* 80A207AC  7F E3 FB 78 */	mr r3, r31
/* 80A207B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A207B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A207B8  7C 08 03 A6 */	mtlr r0
/* 80A207BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A207C0  4E 80 00 20 */	blr 
