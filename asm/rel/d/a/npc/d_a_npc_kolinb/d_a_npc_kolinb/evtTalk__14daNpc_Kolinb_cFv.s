lbl_80A46634:
/* 80A46634  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A46638  7C 08 02 A6 */	mflr r0
/* 80A4663C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A46640  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A46644  7C 7F 1B 78 */	mr r31, r3
/* 80A46648  3C 80 80 A5 */	lis r4, lit_4555@ha /* 0x80A48CA0@ha */
/* 80A4664C  38 A4 8C A0 */	addi r5, r4, lit_4555@l /* 0x80A48CA0@l */
/* 80A46650  80 85 00 00 */	lwz r4, 0(r5)
/* 80A46654  80 05 00 04 */	lwz r0, 4(r5)
/* 80A46658  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A4665C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A46660  80 05 00 08 */	lwz r0, 8(r5)
/* 80A46664  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A46668  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4666C  48 00 04 81 */	bl chkAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i
/* 80A46670  2C 03 00 00 */	cmpwi r3, 0
/* 80A46674  41 82 00 1C */	beq lbl_80A46690
/* 80A46678  7F E3 FB 78 */	mr r3, r31
/* 80A4667C  38 80 00 00 */	li r4, 0
/* 80A46680  39 9F 0F C4 */	addi r12, r31, 0xfc4
/* 80A46684  4B 91 BA 01 */	bl __ptmf_scall
/* 80A46688  60 00 00 00 */	nop 
/* 80A4668C  48 00 00 30 */	b lbl_80A466BC
lbl_80A46690:
/* 80A46690  3C 60 80 A5 */	lis r3, lit_4560@ha /* 0x80A48CAC@ha */
/* 80A46694  38 83 8C AC */	addi r4, r3, lit_4560@l /* 0x80A48CAC@l */
/* 80A46698  80 64 00 00 */	lwz r3, 0(r4)
/* 80A4669C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A466A0  90 61 00 08 */	stw r3, 8(r1)
/* 80A466A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A466A8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A466AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A466B0  7F E3 FB 78 */	mr r3, r31
/* 80A466B4  38 81 00 08 */	addi r4, r1, 8
/* 80A466B8  48 00 04 61 */	bl setAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i
lbl_80A466BC:
/* 80A466BC  38 60 00 01 */	li r3, 1
/* 80A466C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A466C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A466C8  7C 08 03 A6 */	mtlr r0
/* 80A466CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A466D0  4E 80 00 20 */	blr 
