lbl_80C6DB5C:
/* 80C6DB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6DB60  7C 08 02 A6 */	mflr r0
/* 80C6DB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6DB68  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6DB6C  4B 6F 46 65 */	bl _savegpr_26
/* 80C6DB70  7C 7F 1B 78 */	mr r31, r3
/* 80C6DB74  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80C6DB78  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C6DB7C  4B FF FC 65 */	bl setMtx__14daObjYchndlr_cFv
/* 80C6DB80  7F E3 FB 78 */	mr r3, r31
/* 80C6DB84  3C 80 80 C7 */	lis r4, l_cull_box@ha /* 0x80C6E988@ha */
/* 80C6DB88  C4 24 E9 88 */	lfsu f1, l_cull_box@l(r4)  /* 0x80C6E988@l */
/* 80C6DB8C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C6DB90  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C6DB94  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C6DB98  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C6DB9C  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C6DBA0  4B 3A C9 A9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C6DBA4  38 7F 06 24 */	addi r3, r31, 0x624
/* 80C6DBA8  38 80 00 FF */	li r4, 0xff
/* 80C6DBAC  38 A0 00 00 */	li r5, 0
/* 80C6DBB0  7F E6 FB 78 */	mr r6, r31
/* 80C6DBB4  4B 41 5C AD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C6DBB8  3B 40 00 00 */	li r26, 0
/* 80C6DBBC  3B C0 00 00 */	li r30, 0
/* 80C6DBC0  3C 60 80 C7 */	lis r3, l_cc_src_shaft_cyl@ha /* 0x80C6EA30@ha */
/* 80C6DBC4  3B 83 EA 30 */	addi r28, r3, l_cc_src_shaft_cyl@l /* 0x80C6EA30@l */
/* 80C6DBC8  3B BF 06 24 */	addi r29, r31, 0x624
lbl_80C6DBCC:
/* 80C6DBCC  7F 7F F2 14 */	add r27, r31, r30
/* 80C6DBD0  38 7B 06 60 */	addi r3, r27, 0x660
/* 80C6DBD4  7F 84 E3 78 */	mr r4, r28
/* 80C6DBD8  4B 41 6C DD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6DBDC  93 BB 06 A4 */	stw r29, 0x6a4(r27)
/* 80C6DBE0  3B 5A 00 01 */	addi r26, r26, 1
/* 80C6DBE4  2C 1A 00 04 */	cmpwi r26, 4
/* 80C6DBE8  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80C6DBEC  41 80 FF E0 */	blt lbl_80C6DBCC
/* 80C6DBF0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80C6DBF4  3C 80 80 C7 */	lis r4, l_cc_cyl_src@ha /* 0x80C6EA74@ha */
/* 80C6DBF8  38 84 EA 74 */	addi r4, r4, l_cc_cyl_src@l /* 0x80C6EA74@l */
/* 80C6DBFC  4B 41 6C B9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6DC00  38 1F 06 24 */	addi r0, r31, 0x624
/* 80C6DC04  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80C6DC08  3C 60 80 C7 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C6D980@ha */
/* 80C6DC0C  38 03 D9 80 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C6D980@l */
/* 80C6DC10  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C6DC14  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C6DC18  38 60 00 00 */	li r3, 0
/* 80C6DC1C  B0 7F 06 1C */	sth r3, 0x61c(r31)
/* 80C6DC20  38 00 00 32 */	li r0, 0x32
/* 80C6DC24  B0 1F 06 1E */	sth r0, 0x61e(r31)
/* 80C6DC28  38 00 00 01 */	li r0, 1
/* 80C6DC2C  98 1F 06 20 */	stb r0, 0x620(r31)
/* 80C6DC30  98 7F 0C 8C */	stb r3, 0xc8c(r31)
/* 80C6DC34  3C 60 80 C7 */	lis r3, lit_3699@ha /* 0x80C6E9A0@ha */
/* 80C6DC38  C0 03 E9 A0 */	lfs f0, lit_3699@l(r3)  /* 0x80C6E9A0@l */
/* 80C6DC3C  D0 1F 0C 90 */	stfs f0, 0xc90(r31)
/* 80C6DC40  38 00 00 5B */	li r0, 0x5b
/* 80C6DC44  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80C6DC48  38 60 00 01 */	li r3, 1
/* 80C6DC4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6DC50  4B 6F 45 CD */	bl _restgpr_26
/* 80C6DC54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6DC58  7C 08 03 A6 */	mtlr r0
/* 80C6DC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6DC60  4E 80 00 20 */	blr 
