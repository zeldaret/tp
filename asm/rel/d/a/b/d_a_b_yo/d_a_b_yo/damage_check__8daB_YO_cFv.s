lbl_8062FE18:
/* 8062FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FE1C  7C 08 02 A6 */	mflr r0
/* 8062FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FE28  7C 7F 1B 78 */	mr r31, r3
/* 8062FE2C  38 7F 12 50 */	addi r3, r31, 0x1250
/* 8062FE30  4B A5 3A 00 */	b Move__10dCcD_GSttsFv
/* 8062FE34  38 7F 12 8C */	addi r3, r31, 0x128c
/* 8062FE38  4B A5 39 F8 */	b Move__10dCcD_GSttsFv
/* 8062FE3C  80 1F 0F 70 */	lwz r0, 0xf70(r31)
/* 8062FE40  2C 00 00 01 */	cmpwi r0, 1
/* 8062FE44  40 82 00 3C */	bne lbl_8062FE80
/* 8062FE48  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 8062FE4C  4B A5 44 74 */	b ChkAtHit__12dCcD_GObjInfFv
/* 8062FE50  28 03 00 00 */	cmplwi r3, 0
/* 8062FE54  41 82 00 2C */	beq lbl_8062FE80
/* 8062FE58  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 8062FE5C  4B A5 44 FC */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8062FE60  4B C3 3B E8 */	b GetAc__8cCcD_ObjFv
/* 8062FE64  A8 03 00 08 */	lha r0, 8(r3)
/* 8062FE68  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8062FE6C  40 82 00 14 */	bne lbl_8062FE80
/* 8062FE70  7F E3 FB 78 */	mr r3, r31
/* 8062FE74  48 00 27 25 */	bl reflectFreeMove__8daB_YO_cFv
/* 8062FE78  38 00 00 5A */	li r0, 0x5a
/* 8062FE7C  90 1F 0F 90 */	stw r0, 0xf90(r31)
lbl_8062FE80:
/* 8062FE80  A0 1F 0F 86 */	lhz r0, 0xf86(r31)
/* 8062FE84  28 00 00 00 */	cmplwi r0, 0
/* 8062FE88  40 82 00 C8 */	bne lbl_8062FF50
/* 8062FE8C  38 00 00 00 */	li r0, 0
/* 8062FE90  90 1F 1B 38 */	stw r0, 0x1b38(r31)
/* 8062FE94  38 7F 13 E8 */	addi r3, r31, 0x13e8
/* 8062FE98  4B A5 45 C8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FE9C  28 03 00 00 */	cmplwi r3, 0
/* 8062FEA0  41 82 00 14 */	beq lbl_8062FEB4
/* 8062FEA4  38 7F 13 E8 */	addi r3, r31, 0x13e8
/* 8062FEA8  4B A5 46 50 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FEAC  90 7F 1B 38 */	stw r3, 0x1b38(r31)
/* 8062FEB0  48 00 00 40 */	b lbl_8062FEF0
lbl_8062FEB4:
/* 8062FEB4  38 7F 15 20 */	addi r3, r31, 0x1520
/* 8062FEB8  4B A5 45 A8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FEBC  28 03 00 00 */	cmplwi r3, 0
/* 8062FEC0  41 82 00 14 */	beq lbl_8062FED4
/* 8062FEC4  38 7F 15 20 */	addi r3, r31, 0x1520
/* 8062FEC8  4B A5 46 30 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FECC  90 7F 1B 38 */	stw r3, 0x1b38(r31)
/* 8062FED0  48 00 00 20 */	b lbl_8062FEF0
lbl_8062FED4:
/* 8062FED4  38 7F 16 58 */	addi r3, r31, 0x1658
/* 8062FED8  4B A5 45 88 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FEDC  28 03 00 00 */	cmplwi r3, 0
/* 8062FEE0  41 82 00 10 */	beq lbl_8062FEF0
/* 8062FEE4  38 7F 16 58 */	addi r3, r31, 0x1658
/* 8062FEE8  4B A5 46 10 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FEEC  90 7F 1B 38 */	stw r3, 0x1b38(r31)
lbl_8062FEF0:
/* 8062FEF0  80 7F 1B 38 */	lwz r3, 0x1b38(r31)
/* 8062FEF4  28 03 00 00 */	cmplwi r3, 0
/* 8062FEF8  41 82 00 58 */	beq lbl_8062FF50
/* 8062FEFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8062FF00  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8062FF04  41 82 00 10 */	beq lbl_8062FF14
/* 8062FF08  38 00 00 14 */	li r0, 0x14
/* 8062FF0C  B0 1F 0F 86 */	sth r0, 0xf86(r31)
/* 8062FF10  48 00 00 0C */	b lbl_8062FF1C
lbl_8062FF14:
/* 8062FF14  38 00 00 0A */	li r0, 0xa
/* 8062FF18  B0 1F 0F 86 */	sth r0, 0xf86(r31)
lbl_8062FF1C:
/* 8062FF1C  A0 1F 1B 54 */	lhz r0, 0x1b54(r31)
/* 8062FF20  28 00 00 01 */	cmplwi r0, 1
/* 8062FF24  41 81 00 0C */	bgt lbl_8062FF30
/* 8062FF28  38 00 00 0A */	li r0, 0xa
/* 8062FF2C  B0 1F 0F 86 */	sth r0, 0xf86(r31)
lbl_8062FF30:
/* 8062FF30  80 1F 0F 70 */	lwz r0, 0xf70(r31)
/* 8062FF34  2C 00 00 01 */	cmpwi r0, 1
/* 8062FF38  40 82 00 18 */	bne lbl_8062FF50
/* 8062FF3C  38 7F 06 34 */	addi r3, r31, 0x634
/* 8062FF40  80 9F 1B 38 */	lwz r4, 0x1b38(r31)
/* 8062FF44  38 A0 00 2A */	li r5, 0x2a
/* 8062FF48  7F E6 FB 78 */	mr r6, r31
/* 8062FF4C  4B A5 75 C8 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_8062FF50:
/* 8062FF50  A0 1F 0F 88 */	lhz r0, 0xf88(r31)
/* 8062FF54  28 00 00 00 */	cmplwi r0, 0
/* 8062FF58  40 82 01 88 */	bne lbl_806300E0
/* 8062FF5C  38 00 00 00 */	li r0, 0
/* 8062FF60  90 1F 1B 38 */	stw r0, 0x1b38(r31)
/* 8062FF64  38 7F 17 90 */	addi r3, r31, 0x1790
/* 8062FF68  4B A5 44 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FF6C  28 03 00 00 */	cmplwi r3, 0
/* 8062FF70  41 82 00 14 */	beq lbl_8062FF84
/* 8062FF74  38 7F 17 90 */	addi r3, r31, 0x1790
/* 8062FF78  4B A5 45 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FF7C  90 7F 1B 38 */	stw r3, 0x1b38(r31)
/* 8062FF80  48 00 00 40 */	b lbl_8062FFC0
lbl_8062FF84:
/* 8062FF84  38 7F 18 C8 */	addi r3, r31, 0x18c8
/* 8062FF88  4B A5 44 D8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FF8C  28 03 00 00 */	cmplwi r3, 0
/* 8062FF90  41 82 00 14 */	beq lbl_8062FFA4
/* 8062FF94  38 7F 18 C8 */	addi r3, r31, 0x18c8
/* 8062FF98  4B A5 45 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FF9C  90 7F 1B 38 */	stw r3, 0x1b38(r31)
/* 8062FFA0  48 00 00 20 */	b lbl_8062FFC0
lbl_8062FFA4:
/* 8062FFA4  38 7F 1A 00 */	addi r3, r31, 0x1a00
/* 8062FFA8  4B A5 44 B8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062FFAC  28 03 00 00 */	cmplwi r3, 0
/* 8062FFB0  41 82 00 10 */	beq lbl_8062FFC0
/* 8062FFB4  38 7F 1A 00 */	addi r3, r31, 0x1a00
/* 8062FFB8  4B A5 45 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062FFBC  90 7F 1B 38 */	stw r3, 0x1b38(r31)
lbl_8062FFC0:
/* 8062FFC0  80 1F 1B 38 */	lwz r0, 0x1b38(r31)
/* 8062FFC4  28 00 00 00 */	cmplwi r0, 0
/* 8062FFC8  41 82 01 18 */	beq lbl_806300E0
/* 8062FFCC  7F E3 FB 78 */	mr r3, r31
/* 8062FFD0  38 9F 1B 38 */	addi r4, r31, 0x1b38
/* 8062FFD4  4B A5 7C 30 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8062FFD8  38 00 00 64 */	li r0, 0x64
/* 8062FFDC  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8062FFE0  38 00 00 14 */	li r0, 0x14
/* 8062FFE4  B0 1F 0F 88 */	sth r0, 0xf88(r31)
/* 8062FFE8  80 7F 1B 38 */	lwz r3, 0x1b38(r31)
/* 8062FFEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8062FFF0  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8062FFF4  41 82 00 EC */	beq lbl_806300E0
/* 8062FFF8  80 1F 0F 70 */	lwz r0, 0xf70(r31)
/* 8062FFFC  2C 00 00 01 */	cmpwi r0, 1
/* 80630000  40 82 00 68 */	bne lbl_80630068
/* 80630004  38 80 00 00 */	li r4, 0
/* 80630008  90 9F 1B 64 */	stw r4, 0x1b64(r31)
/* 8063000C  80 1F 18 2C */	lwz r0, 0x182c(r31)
/* 80630010  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80630014  41 82 00 10 */	beq lbl_80630024
/* 80630018  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 8063001C  98 83 11 25 */	stb r4, struct_80451124+0x1@l(r3)
/* 80630020  48 00 00 C0 */	b lbl_806300E0
lbl_80630024:
/* 80630024  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 80630028  28 00 00 06 */	cmplwi r0, 6
/* 8063002C  41 80 00 18 */	blt lbl_80630044
/* 80630030  7F E3 FB 78 */	mr r3, r31
/* 80630034  38 80 00 02 */	li r4, 2
/* 80630038  38 A0 00 00 */	li r5, 0
/* 8063003C  4B FF FD D1 */	bl setActionMode__8daB_YO_cFii
/* 80630040  48 00 00 A0 */	b lbl_806300E0
lbl_80630044:
/* 80630044  38 60 00 06 */	li r3, 6
/* 80630048  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8063004C  7C 04 07 74 */	extsb r4, r0
/* 80630050  4B 9F DA 4C */	b dComIfGs_onOneZoneSwitch__Fii
/* 80630054  7F E3 FB 78 */	mr r3, r31
/* 80630058  38 80 00 01 */	li r4, 1
/* 8063005C  38 A0 00 01 */	li r5, 1
/* 80630060  4B FF FD AD */	bl setActionMode__8daB_YO_cFii
/* 80630064  48 00 00 7C */	b lbl_806300E0
lbl_80630068:
/* 80630068  80 1F 18 2C */	lwz r0, 0x182c(r31)
/* 8063006C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80630070  40 82 00 70 */	bne lbl_806300E0
/* 80630074  38 60 00 08 */	li r3, 8
/* 80630078  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8063007C  7C 04 07 74 */	extsb r4, r0
/* 80630080  4B 9F DA 1C */	b dComIfGs_onOneZoneSwitch__Fii
/* 80630084  88 7F 0F AB */	lbz r3, 0xfab(r31)
/* 80630088  38 03 00 01 */	addi r0, r3, 1
/* 8063008C  98 1F 0F AB */	stb r0, 0xfab(r31)
/* 80630090  88 1F 0F AB */	lbz r0, 0xfab(r31)
/* 80630094  28 00 00 03 */	cmplwi r0, 3
/* 80630098  41 80 00 2C */	blt lbl_806300C4
/* 8063009C  38 00 00 03 */	li r0, 3
/* 806300A0  98 1F 0F AB */	stb r0, 0xfab(r31)
/* 806300A4  7F E3 FB 78 */	mr r3, r31
/* 806300A8  38 80 00 0A */	li r4, 0xa
/* 806300AC  48 00 01 81 */	bl setIcicleOperate__8daB_YO_cFi
/* 806300B0  7F E3 FB 78 */	mr r3, r31
/* 806300B4  38 80 00 09 */	li r4, 9
/* 806300B8  38 A0 00 00 */	li r5, 0
/* 806300BC  4B FF FD 51 */	bl setActionMode__8daB_YO_cFii
/* 806300C0  48 00 00 20 */	b lbl_806300E0
lbl_806300C4:
/* 806300C4  7F E3 FB 78 */	mr r3, r31
/* 806300C8  38 80 00 09 */	li r4, 9
/* 806300CC  48 00 01 61 */	bl setIcicleOperate__8daB_YO_cFi
/* 806300D0  7F E3 FB 78 */	mr r3, r31
/* 806300D4  38 80 00 08 */	li r4, 8
/* 806300D8  38 A0 00 00 */	li r5, 0
/* 806300DC  4B FF FD 31 */	bl setActionMode__8daB_YO_cFii
lbl_806300E0:
/* 806300E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806300E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806300E8  7C 08 03 A6 */	mtlr r0
/* 806300EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806300F0  4E 80 00 20 */	blr 
