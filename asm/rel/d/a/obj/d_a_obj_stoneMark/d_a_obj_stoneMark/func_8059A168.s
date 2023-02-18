lbl_8059A168:
/* 8059A168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A16C  7C 08 02 A6 */	mflr r0
/* 8059A170  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A174  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A178  4B DC 80 65 */	bl _savegpr_29
/* 8059A17C  7C 7E 1B 78 */	mr r30, r3
/* 8059A180  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059A184  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059A188  40 82 00 80 */	bne lbl_8059A208
/* 8059A18C  7F C0 F3 79 */	or. r0, r30, r30
/* 8059A190  41 82 00 6C */	beq lbl_8059A1FC
/* 8059A194  7C 1F 03 78 */	mr r31, r0
/* 8059A198  4B A7 E9 CD */	bl __ct__10fopAc_ac_cFv
/* 8059A19C  3B BF 05 90 */	addi r29, r31, 0x590
/* 8059A1A0  7F A3 EB 78 */	mr r3, r29
/* 8059A1A4  4B AD BE FD */	bl __ct__9dBgS_AcchFv
/* 8059A1A8  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8059A464@ha */
/* 8059A1AC  38 63 A4 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8059A464@l */
/* 8059A1B0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8059A1B4  38 03 00 0C */	addi r0, r3, 0xc
/* 8059A1B8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8059A1BC  38 03 00 18 */	addi r0, r3, 0x18
/* 8059A1C0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8059A1C4  38 7D 00 14 */	addi r3, r29, 0x14
/* 8059A1C8  4B AD EC A1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8059A1CC  38 7F 07 68 */	addi r3, r31, 0x768
/* 8059A1D0  4B AD BC DD */	bl __ct__12dBgS_AcchCirFv
/* 8059A1D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8059A1D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8059A1DC  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 8059A1E0  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8059A1E4  4B AE 95 7D */	bl __ct__10dCcD_GSttsFv
/* 8059A1E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8059A1EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8059A1F0  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 8059A1F4  38 03 00 20 */	addi r0, r3, 0x20
/* 8059A1F8  90 1F 07 C4 */	stw r0, 0x7c4(r31)
lbl_8059A1FC:
/* 8059A1FC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8059A200  60 00 00 08 */	ori r0, r0, 8
/* 8059A204  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8059A208:
/* 8059A208  38 7E 05 68 */	addi r3, r30, 0x568
/* 8059A20C  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059A410@ha */
/* 8059A210  38 84 A4 10 */	addi r4, r4, l_arcName@l /* 0x8059A410@l */
/* 8059A214  80 84 00 00 */	lwz r4, 0(r4)
/* 8059A218  4B A9 2C A5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059A21C  7C 7F 1B 78 */	mr r31, r3
/* 8059A220  2C 1F 00 04 */	cmpwi r31, 4
/* 8059A224  40 82 00 1C */	bne lbl_8059A240
/* 8059A228  7F C3 F3 78 */	mr r3, r30
/* 8059A22C  4B FF FE 55 */	bl Create__12daObjSMark_cFv
/* 8059A230  2C 03 00 00 */	cmpwi r3, 0
/* 8059A234  40 82 00 0C */	bne lbl_8059A240
/* 8059A238  38 60 00 05 */	li r3, 5
/* 8059A23C  48 00 00 08 */	b lbl_8059A244
lbl_8059A240:
/* 8059A240  7F E3 FB 78 */	mr r3, r31
lbl_8059A244:
/* 8059A244  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A248  4B DC 7F E1 */	bl _restgpr_29
/* 8059A24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A250  7C 08 03 A6 */	mtlr r0
/* 8059A254  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A258  4E 80 00 20 */	blr 
