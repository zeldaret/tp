lbl_80AC3684:
/* 80AC3684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3688  7C 08 02 A6 */	mflr r0
/* 80AC368C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3694  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3698  41 82 00 1C */	beq lbl_80AC36B4
/* 80AC369C  3C A0 80 AC */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC36A0  38 05 4E D4 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC36A4  90 1F 00 04 */	stw r0, 4(r31)
/* 80AC36A8  7C 80 07 35 */	extsh. r0, r4
/* 80AC36AC  40 81 00 08 */	ble lbl_80AC36B4
/* 80AC36B0  4B 80 B6 8D */	bl __dl__FPv
lbl_80AC36B4:
/* 80AC36B4  7F E3 FB 78 */	mr r3, r31
/* 80AC36B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC36BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC36C0  7C 08 03 A6 */	mtlr r0
/* 80AC36C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC36C8  4E 80 00 20 */	blr 
