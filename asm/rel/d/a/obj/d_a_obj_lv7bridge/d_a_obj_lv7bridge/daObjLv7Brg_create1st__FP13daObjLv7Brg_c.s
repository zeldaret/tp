lbl_80C874CC:
/* 80C874CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C874D0  7C 08 02 A6 */	mflr r0
/* 80C874D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C874D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C874DC  4B 6D AD 00 */	b _savegpr_29
/* 80C874E0  7C 7F 1B 78 */	mr r31, r3
/* 80C874E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C874E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C874EC  40 82 00 AC */	bne lbl_80C87598
/* 80C874F0  7F E0 FB 79 */	or. r0, r31, r31
/* 80C874F4  41 82 00 98 */	beq lbl_80C8758C
/* 80C874F8  7C 1E 03 78 */	mr r30, r0
/* 80C874FC  4B 3F 11 28 */	b __ct__16dBgS_MoveBgActorFv
/* 80C87500  3C 60 80 C8 */	lis r3, __vt__13daObjLv7Brg_c@ha
/* 80C87504  38 03 7B 8C */	addi r0, r3, __vt__13daObjLv7Brg_c@l
/* 80C87508  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C8750C  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80C87510  7F A3 EB 78 */	mr r3, r29
/* 80C87514  4B 3E EB 8C */	b __ct__9dBgS_AcchFv
/* 80C87518  3C 60 80 C8 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C8751C  38 63 7B 5C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C87520  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C87524  38 03 00 0C */	addi r0, r3, 0xc
/* 80C87528  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C8752C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C87530  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C87534  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C87538  4B 3F 19 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C8753C  38 7E 07 84 */	addi r3, r30, 0x784
/* 80C87540  4B 3E E9 6C */	b __ct__12dBgS_AcchCirFv
/* 80C87544  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C87548  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C8754C  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80C87550  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80C87554  4B 3F C2 0C */	b __ct__10dCcD_GSttsFv
/* 80C87558  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C8755C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C87560  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80C87564  38 03 00 20 */	addi r0, r3, 0x20
/* 80C87568  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80C8756C  38 7E 08 00 */	addi r3, r30, 0x800
/* 80C87570  3C 80 80 C8 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80C87574  38 84 76 84 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80C87578  3C A0 80 C8 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80C8757C  38 A5 75 B8 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80C87580  38 C0 01 3C */	li r6, 0x13c
/* 80C87584  38 E0 00 02 */	li r7, 2
/* 80C87588  4B 6D A7 D8 */	b __construct_array
lbl_80C8758C:
/* 80C8758C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C87590  60 00 00 08 */	ori r0, r0, 8
/* 80C87594  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C87598:
/* 80C87598  7F E3 FB 78 */	mr r3, r31
/* 80C8759C  4B FF F4 A9 */	bl create1st__13daObjLv7Brg_cFv
/* 80C875A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C875A4  4B 6D AC 84 */	b _restgpr_29
/* 80C875A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C875AC  7C 08 03 A6 */	mtlr r0
/* 80C875B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C875B4  4E 80 00 20 */	blr 
