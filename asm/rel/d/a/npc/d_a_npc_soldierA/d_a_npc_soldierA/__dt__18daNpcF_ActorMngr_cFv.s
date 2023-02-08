lbl_80AF1DE0:
/* 80AF1DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1DE4  7C 08 02 A6 */	mflr r0
/* 80AF1DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1DF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF1DF4  41 82 00 1C */	beq lbl_80AF1E10
/* 80AF1DF8  3C A0 80 AF */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AF2AA8@ha */
/* 80AF1DFC  38 05 2A A8 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80AF2AA8@l */
/* 80AF1E00  90 1F 00 04 */	stw r0, 4(r31)
/* 80AF1E04  7C 80 07 35 */	extsh. r0, r4
/* 80AF1E08  40 81 00 08 */	ble lbl_80AF1E10
/* 80AF1E0C  4B 7D CF 31 */	bl __dl__FPv
lbl_80AF1E10:
/* 80AF1E10  7F E3 FB 78 */	mr r3, r31
/* 80AF1E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1E1C  7C 08 03 A6 */	mtlr r0
/* 80AF1E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1E24  4E 80 00 20 */	blr 
