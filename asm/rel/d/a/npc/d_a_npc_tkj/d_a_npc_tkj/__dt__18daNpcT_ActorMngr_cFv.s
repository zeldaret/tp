lbl_80575D0C:
/* 80575D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575D10  7C 08 02 A6 */	mflr r0
/* 80575D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575D1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80575D20  41 82 00 1C */	beq lbl_80575D3C
/* 80575D24  3C A0 80 57 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80575D28  38 05 68 BC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80575D2C  90 1F 00 04 */	stw r0, 4(r31)
/* 80575D30  7C 80 07 35 */	extsh. r0, r4
/* 80575D34  40 81 00 08 */	ble lbl_80575D3C
/* 80575D38  4B D5 90 04 */	b __dl__FPv
lbl_80575D3C:
/* 80575D3C  7F E3 FB 78 */	mr r3, r31
/* 80575D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575D48  7C 08 03 A6 */	mtlr r0
/* 80575D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80575D50  4E 80 00 20 */	blr 
