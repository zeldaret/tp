lbl_809B45BC:
/* 809B45BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B45C0  7C 08 02 A6 */	mflr r0
/* 809B45C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B45C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809B45CC  7C 7F 1B 78 */	mr r31, r3
/* 809B45D0  38 00 00 00 */	li r0, 0
/* 809B45D4  90 01 00 08 */	stw r0, 8(r1)
/* 809B45D8  38 7F 09 74 */	addi r3, r31, 0x974
/* 809B45DC  38 81 00 08 */	addi r4, r1, 8
/* 809B45E0  4B 89 5F 49 */	bl getEventId__10dMsgFlow_cFPi
/* 809B45E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809B45E8  28 00 00 01 */	cmplwi r0, 1
/* 809B45EC  41 82 00 0C */	beq lbl_809B45F8
/* 809B45F0  38 00 00 00 */	li r0, 0
/* 809B45F4  90 01 00 08 */	stw r0, 8(r1)
lbl_809B45F8:
/* 809B45F8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809B45FC  80 81 00 08 */	lwz r4, 8(r1)
/* 809B4600  38 A0 00 00 */	li r5, 0
/* 809B4604  38 C0 FF FF */	li r6, -1
/* 809B4608  38 E0 FF FF */	li r7, -1
/* 809B460C  39 00 00 00 */	li r8, 0
/* 809B4610  39 20 00 00 */	li r9, 0
/* 809B4614  4B 66 75 D5 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809B4618  7C 64 1B 78 */	mr r4, r3
/* 809B461C  3C 04 00 01 */	addis r0, r4, 1
/* 809B4620  28 00 FF FF */	cmplwi r0, 0xffff
/* 809B4624  41 82 00 14 */	beq lbl_809B4638
/* 809B4628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B462C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B4630  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809B4634  4B 68 F0 B9 */	bl setPtI_Id__14dEvt_control_cFUi
lbl_809B4638:
/* 809B4638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809B463C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B4640  7C 08 03 A6 */	mtlr r0
/* 809B4644  38 21 00 20 */	addi r1, r1, 0x20
/* 809B4648  4E 80 00 20 */	blr 
