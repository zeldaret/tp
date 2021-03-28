lbl_8073DDF8:
/* 8073DDF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073DDFC  7C 08 02 A6 */	mflr r0
/* 8073DE00  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073DE04  39 61 00 30 */	addi r11, r1, 0x30
/* 8073DE08  4B C2 43 D4 */	b _savegpr_29
/* 8073DE0C  7C 7E 1B 78 */	mr r30, r3
/* 8073DE10  3C 60 80 74 */	lis r3, lit_3767@ha
/* 8073DE14  3B E3 1B F4 */	addi r31, r3, lit_3767@l
/* 8073DE18  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 8073DE1C  2C 00 00 06 */	cmpwi r0, 6
/* 8073DE20  41 82 00 14 */	beq lbl_8073DE34
/* 8073DE24  2C 00 00 0B */	cmpwi r0, 0xb
/* 8073DE28  41 82 00 0C */	beq lbl_8073DE34
/* 8073DE2C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073DE30  40 82 00 FC */	bne lbl_8073DF2C
lbl_8073DE34:
/* 8073DE34  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073DE38  38 80 00 01 */	li r4, 1
/* 8073DE3C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073DE40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073DE44  40 82 00 18 */	bne lbl_8073DE5C
/* 8073DE48  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073DE4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073DE50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073DE54  41 82 00 08 */	beq lbl_8073DE5C
/* 8073DE58  38 80 00 00 */	li r4, 0
lbl_8073DE5C:
/* 8073DE5C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073DE60  41 82 00 1C */	beq lbl_8073DE7C
/* 8073DE64  7F C3 F3 78 */	mr r3, r30
/* 8073DE68  38 80 00 0E */	li r4, 0xe
/* 8073DE6C  38 A0 00 02 */	li r5, 2
/* 8073DE70  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073DE74  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073DE78  4B FF FC B1 */	bl SetAnm__8daE_PH_cFiiff
lbl_8073DE7C:
/* 8073DE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073DE80  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8073DE84  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8073DE88  38 00 00 FF */	li r0, 0xff
/* 8073DE8C  90 01 00 08 */	stw r0, 8(r1)
/* 8073DE90  38 80 00 00 */	li r4, 0
/* 8073DE94  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073DE98  38 00 FF FF */	li r0, -1
/* 8073DE9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073DEA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073DEA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073DEA8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8073DEAC  80 9E 05 F8 */	lwz r4, 0x5f8(r30)
/* 8073DEB0  38 A0 00 00 */	li r5, 0
/* 8073DEB4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000878C@ha */
/* 8073DEB8  38 C6 87 8C */	addi r6, r6, 0x878C /* 0x0000878C@l */
/* 8073DEBC  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8073DEC0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8073DEC4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073DEC8  39 40 00 00 */	li r10, 0
/* 8073DECC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073DED0  4B 90 F5 FC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073DED4  90 7E 05 F8 */	stw r3, 0x5f8(r30)
/* 8073DED8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8073DEDC  38 00 00 FF */	li r0, 0xff
/* 8073DEE0  90 01 00 08 */	stw r0, 8(r1)
/* 8073DEE4  38 80 00 00 */	li r4, 0
/* 8073DEE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073DEEC  38 00 FF FF */	li r0, -1
/* 8073DEF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073DEF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073DEF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073DEFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8073DF00  80 9E 05 FC */	lwz r4, 0x5fc(r30)
/* 8073DF04  38 A0 00 00 */	li r5, 0
/* 8073DF08  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000878D@ha */
/* 8073DF0C  38 C6 87 8D */	addi r6, r6, 0x878D /* 0x0000878D@l */
/* 8073DF10  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8073DF14  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8073DF18  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073DF1C  39 40 00 00 */	li r10, 0
/* 8073DF20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073DF24  4B 90 F5 A8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073DF28  90 7E 05 FC */	stw r3, 0x5fc(r30)
lbl_8073DF2C:
/* 8073DF2C  80 9E 06 28 */	lwz r4, 0x628(r30)
/* 8073DF30  2C 04 00 0B */	cmpwi r4, 0xb
/* 8073DF34  41 82 00 0C */	beq lbl_8073DF40
/* 8073DF38  2C 04 00 0E */	cmpwi r4, 0xe
/* 8073DF3C  40 82 00 80 */	bne lbl_8073DFBC
lbl_8073DF40:
/* 8073DF40  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8073DF44  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8073DF48  41 82 00 50 */	beq lbl_8073DF98
/* 8073DF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073DF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073DF54  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8073DF58  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8073DF5C  41 82 00 3C */	beq lbl_8073DF98
/* 8073DF60  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8073DF64  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 8073DF68  38 00 00 0F */	li r0, 0xf
/* 8073DF6C  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 8073DF70  38 00 10 00 */	li r0, 0x1000
/* 8073DF74  B0 1E 06 16 */	sth r0, 0x616(r30)
/* 8073DF78  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 8073DF7C  7F C3 F3 78 */	mr r3, r30
/* 8073DF80  38 80 00 0C */	li r4, 0xc
/* 8073DF84  38 A0 00 02 */	li r5, 2
/* 8073DF88  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073DF8C  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073DF90  4B FF FB 99 */	bl SetAnm__8daE_PH_cFiiff
/* 8073DF94  48 00 00 BC */	b lbl_8073E050
lbl_8073DF98:
/* 8073DF98  2C 04 00 0E */	cmpwi r4, 0xe
/* 8073DF9C  41 82 00 B4 */	beq lbl_8073E050
/* 8073DFA0  7F C3 F3 78 */	mr r3, r30
/* 8073DFA4  38 80 00 0E */	li r4, 0xe
/* 8073DFA8  38 A0 00 02 */	li r5, 2
/* 8073DFAC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073DFB0  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073DFB4  4B FF FB 75 */	bl SetAnm__8daE_PH_cFiiff
/* 8073DFB8  48 00 00 98 */	b lbl_8073E050
lbl_8073DFBC:
/* 8073DFBC  2C 04 00 0C */	cmpwi r4, 0xc
/* 8073DFC0  40 82 00 40 */	bne lbl_8073E000
/* 8073DFC4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8073DFC8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8073DFCC  41 82 00 18 */	beq lbl_8073DFE4
/* 8073DFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073DFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073DFD8  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8073DFDC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8073DFE0  40 82 00 70 */	bne lbl_8073E050
lbl_8073DFE4:
/* 8073DFE4  7F C3 F3 78 */	mr r3, r30
/* 8073DFE8  38 80 00 0A */	li r4, 0xa
/* 8073DFEC  38 A0 00 00 */	li r5, 0
/* 8073DFF0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073DFF4  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073DFF8  4B FF FB 31 */	bl SetAnm__8daE_PH_cFiiff
/* 8073DFFC  48 00 00 54 */	b lbl_8073E050
lbl_8073E000:
/* 8073E000  2C 04 00 0A */	cmpwi r4, 0xa
/* 8073E004  40 82 00 4C */	bne lbl_8073E050
/* 8073E008  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073E00C  38 80 00 01 */	li r4, 1
/* 8073E010  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073E014  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073E018  40 82 00 18 */	bne lbl_8073E030
/* 8073E01C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073E020  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073E024  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073E028  41 82 00 08 */	beq lbl_8073E030
/* 8073E02C  38 80 00 00 */	li r4, 0
lbl_8073E030:
/* 8073E030  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073E034  41 82 00 1C */	beq lbl_8073E050
/* 8073E038  7F C3 F3 78 */	mr r3, r30
/* 8073E03C  38 80 00 0E */	li r4, 0xe
/* 8073E040  38 A0 00 02 */	li r5, 2
/* 8073E044  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073E048  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073E04C  4B FF FA DD */	bl SetAnm__8daE_PH_cFiiff
lbl_8073E050:
/* 8073E050  39 61 00 30 */	addi r11, r1, 0x30
/* 8073E054  4B C2 41 D4 */	b _restgpr_29
/* 8073E058  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073E05C  7C 08 03 A6 */	mtlr r0
/* 8073E060  38 21 00 30 */	addi r1, r1, 0x30
/* 8073E064  4E 80 00 20 */	blr 
