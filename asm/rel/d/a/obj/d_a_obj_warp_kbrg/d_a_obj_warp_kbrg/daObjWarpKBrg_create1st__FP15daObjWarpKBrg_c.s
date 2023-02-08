lbl_80D294B0:
/* 80D294B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D294B4  7C 08 02 A6 */	mflr r0
/* 80D294B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D294BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D294C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D294C4  7C 7F 1B 78 */	mr r31, r3
/* 80D294C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D294CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D294D0  40 82 00 34 */	bne lbl_80D29504
/* 80D294D4  7F E0 FB 79 */	or. r0, r31, r31
/* 80D294D8  41 82 00 20 */	beq lbl_80D294F8
/* 80D294DC  7C 1E 03 78 */	mr r30, r0
/* 80D294E0  4B 34 F1 45 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D294E4  3C 60 80 D3 */	lis r3, __vt__15daObjWarpKBrg_c@ha /* 0x80D29900@ha */
/* 80D294E8  38 03 99 00 */	addi r0, r3, __vt__15daObjWarpKBrg_c@l /* 0x80D29900@l */
/* 80D294EC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D294F0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80D294F4  4B 52 0A 0D */	bl __ct__10dMsgFlow_cFv
lbl_80D294F8:
/* 80D294F8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D294FC  60 00 00 08 */	ori r0, r0, 8
/* 80D29500  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D29504:
/* 80D29504  7F E3 FB 78 */	mr r3, r31
/* 80D29508  4B FF E1 AD */	bl create1st__15daObjWarpKBrg_cFv
/* 80D2950C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D29510  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D29514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29518  7C 08 03 A6 */	mtlr r0
/* 80D2951C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29520  4E 80 00 20 */	blr 
