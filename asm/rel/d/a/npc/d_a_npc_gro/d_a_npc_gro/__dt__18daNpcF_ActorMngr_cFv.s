lbl_809DE688:
/* 809DE688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE68C  7C 08 02 A6 */	mflr r0
/* 809DE690  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DE698  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DE69C  41 82 00 1C */	beq lbl_809DE6B8
/* 809DE6A0  3C A0 80 9E */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809DF6BC@ha */
/* 809DE6A4  38 05 F6 BC */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809DF6BC@l */
/* 809DE6A8  90 1F 00 04 */	stw r0, 4(r31)
/* 809DE6AC  7C 80 07 35 */	extsh. r0, r4
/* 809DE6B0  40 81 00 08 */	ble lbl_809DE6B8
/* 809DE6B4  4B 8F 06 89 */	bl __dl__FPv
lbl_809DE6B8:
/* 809DE6B8  7F E3 FB 78 */	mr r3, r31
/* 809DE6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DE6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE6C4  7C 08 03 A6 */	mtlr r0
/* 809DE6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE6CC  4E 80 00 20 */	blr 
