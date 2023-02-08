lbl_80CCE8B0:
/* 80CCE8B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCE8B4  7C 08 02 A6 */	mflr r0
/* 80CCE8B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCE8BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCE8C0  4B 69 39 19 */	bl _savegpr_28
/* 80CCE8C4  7C 7C 1B 78 */	mr r28, r3
/* 80CCE8C8  38 80 00 00 */	li r4, 0
/* 80CCE8CC  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CCE8D0  2C 00 00 06 */	cmpwi r0, 6
/* 80CCE8D4  41 82 00 1C */	beq lbl_80CCE8F0
/* 80CCE8D8  40 80 00 1C */	bge lbl_80CCE8F4
/* 80CCE8DC  2C 00 00 04 */	cmpwi r0, 4
/* 80CCE8E0  40 80 00 08 */	bge lbl_80CCE8E8
/* 80CCE8E4  48 00 00 10 */	b lbl_80CCE8F4
lbl_80CCE8E8:
/* 80CCE8E8  38 80 00 05 */	li r4, 5
/* 80CCE8EC  48 00 00 08 */	b lbl_80CCE8F4
lbl_80CCE8F0:
/* 80CCE8F0  38 80 00 02 */	li r4, 2
lbl_80CCE8F4:
/* 80CCE8F4  3C 60 80 CD */	lis r3, l_bmdData@ha /* 0x80CD5EF8@ha */
/* 80CCE8F8  38 63 5E F8 */	addi r3, r3, l_bmdData@l /* 0x80CD5EF8@l */
/* 80CCE8FC  3B C3 00 04 */	addi r30, r3, 4
/* 80CCE900  54 80 18 38 */	slwi r0, r4, 3
/* 80CCE904  7C BE 00 2E */	lwzx r5, r30, r0
/* 80CCE908  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CCE90C  54 A0 10 3A */	slwi r0, r5, 2
/* 80CCE910  3C 60 80 CD */	lis r3, l_resNameList@ha /* 0x80CD5F90@ha */
/* 80CCE914  38 63 5F 90 */	addi r3, r3, l_resNameList@l /* 0x80CD5F90@l */
/* 80CCE918  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CCE91C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCE920  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCE924  3F A5 00 02 */	addis r29, r5, 2
/* 80CCE928  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CCE92C  7F A5 EB 78 */	mr r5, r29
/* 80CCE930  38 C0 00 80 */	li r6, 0x80
/* 80CCE934  4B 36 D9 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCE938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CCE93C  40 82 00 0C */	bne lbl_80CCE948
/* 80CCE940  38 60 00 00 */	li r3, 0
/* 80CCE944  48 00 02 F8 */	b lbl_80CCEC3C
lbl_80CCE948:
/* 80CCE948  38 60 00 58 */	li r3, 0x58
/* 80CCE94C  4B 60 03 01 */	bl __nw__FUl
/* 80CCE950  7C 60 1B 79 */	or. r0, r3, r3
/* 80CCE954  41 82 00 4C */	beq lbl_80CCE9A0
/* 80CCE958  38 1C 05 80 */	addi r0, r28, 0x580
/* 80CCE95C  90 01 00 08 */	stw r0, 8(r1)
/* 80CCE960  3C 00 00 08 */	lis r0, 8
/* 80CCE964  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCE968  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 80CCE96C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 80CCE970  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCE974  7F E4 FB 78 */	mr r4, r31
/* 80CCE978  38 A0 00 00 */	li r5, 0
/* 80CCE97C  38 C0 00 00 */	li r6, 0
/* 80CCE980  38 E0 00 00 */	li r7, 0
/* 80CCE984  39 00 FF FF */	li r8, -1
/* 80CCE988  3D 20 80 CD */	lis r9, lit_4533@ha /* 0x80CD5DC8@ha */
/* 80CCE98C  C0 29 5D C8 */	lfs f1, lit_4533@l(r9)  /* 0x80CD5DC8@l */
/* 80CCE990  39 20 00 00 */	li r9, 0
/* 80CCE994  39 40 FF FF */	li r10, -1
/* 80CCE998  4B 34 1E 39 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80CCE99C  7C 60 1B 78 */	mr r0, r3
lbl_80CCE9A0:
/* 80CCE9A0  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80CCE9A4  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CCE9A8  28 03 00 00 */	cmplwi r3, 0
/* 80CCE9AC  41 82 00 10 */	beq lbl_80CCE9BC
/* 80CCE9B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCE9B4  28 04 00 00 */	cmplwi r4, 0
/* 80CCE9B8  40 82 00 0C */	bne lbl_80CCE9C4
lbl_80CCE9BC:
/* 80CCE9BC  38 60 00 00 */	li r3, 0
/* 80CCE9C0  48 00 02 7C */	b lbl_80CCEC3C
lbl_80CCE9C4:
/* 80CCE9C4  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CCE9C8  28 00 00 06 */	cmplwi r0, 6
/* 80CCE9CC  40 82 00 9C */	bne lbl_80CCEA68
/* 80CCE9D0  38 7C 0E 44 */	addi r3, r28, 0xe44
/* 80CCE9D4  38 A0 00 01 */	li r5, 1
/* 80CCE9D8  4B 33 FB 65 */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80CCE9DC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCE9E0  40 82 00 0C */	bne lbl_80CCE9EC
/* 80CCE9E4  38 60 00 00 */	li r3, 0
/* 80CCE9E8  48 00 02 54 */	b lbl_80CCEC3C
lbl_80CCE9EC:
/* 80CCE9EC  38 60 00 58 */	li r3, 0x58
/* 80CCE9F0  4B 60 02 5D */	bl __nw__FUl
/* 80CCE9F4  7C 60 1B 79 */	or. r0, r3, r3
/* 80CCE9F8  41 82 00 4C */	beq lbl_80CCEA44
/* 80CCE9FC  38 1C 05 80 */	addi r0, r28, 0x580
/* 80CCEA00  90 01 00 08 */	stw r0, 8(r1)
/* 80CCEA04  3C 00 00 08 */	lis r0, 8
/* 80CCEA08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCEA0C  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 80CCEA10  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 80CCEA14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCEA18  7F E4 FB 78 */	mr r4, r31
/* 80CCEA1C  38 A0 00 00 */	li r5, 0
/* 80CCEA20  38 C0 00 00 */	li r6, 0
/* 80CCEA24  38 E0 00 00 */	li r7, 0
/* 80CCEA28  39 00 FF FF */	li r8, -1
/* 80CCEA2C  3D 20 80 CD */	lis r9, lit_4533@ha /* 0x80CD5DC8@ha */
/* 80CCEA30  C0 29 5D C8 */	lfs f1, lit_4533@l(r9)  /* 0x80CD5DC8@l */
/* 80CCEA34  39 20 00 00 */	li r9, 0
/* 80CCEA38  39 40 FF FF */	li r10, -1
/* 80CCEA3C  4B 34 1D 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80CCEA40  7C 60 1B 78 */	mr r0, r3
lbl_80CCEA44:
/* 80CCEA44  90 1C 05 7C */	stw r0, 0x57c(r28)
/* 80CCEA48  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80CCEA4C  28 03 00 00 */	cmplwi r3, 0
/* 80CCEA50  41 82 00 10 */	beq lbl_80CCEA60
/* 80CCEA54  80 03 00 04 */	lwz r0, 4(r3)
/* 80CCEA58  28 00 00 00 */	cmplwi r0, 0
/* 80CCEA5C  40 82 01 30 */	bne lbl_80CCEB8C
lbl_80CCEA60:
/* 80CCEA60  38 60 00 00 */	li r3, 0
/* 80CCEA64  48 00 01 D8 */	b lbl_80CCEC3C
lbl_80CCEA68:
/* 80CCEA68  2C 00 00 03 */	cmpwi r0, 3
/* 80CCEA6C  41 82 00 48 */	beq lbl_80CCEAB4
/* 80CCEA70  40 80 00 1C */	bge lbl_80CCEA8C
/* 80CCEA74  2C 00 00 01 */	cmpwi r0, 1
/* 80CCEA78  41 82 00 2C */	beq lbl_80CCEAA4
/* 80CCEA7C  40 80 00 30 */	bge lbl_80CCEAAC
/* 80CCEA80  2C 00 00 00 */	cmpwi r0, 0
/* 80CCEA84  40 80 00 18 */	bge lbl_80CCEA9C
/* 80CCEA88  48 00 00 44 */	b lbl_80CCEACC
lbl_80CCEA8C:
/* 80CCEA8C  2C 00 00 05 */	cmpwi r0, 5
/* 80CCEA90  41 82 00 34 */	beq lbl_80CCEAC4
/* 80CCEA94  40 80 00 38 */	bge lbl_80CCEACC
/* 80CCEA98  48 00 00 24 */	b lbl_80CCEABC
lbl_80CCEA9C:
/* 80CCEA9C  38 00 00 03 */	li r0, 3
/* 80CCEAA0  48 00 00 30 */	b lbl_80CCEAD0
lbl_80CCEAA4:
/* 80CCEAA4  38 00 00 04 */	li r0, 4
/* 80CCEAA8  48 00 00 28 */	b lbl_80CCEAD0
lbl_80CCEAAC:
/* 80CCEAAC  38 00 00 03 */	li r0, 3
/* 80CCEAB0  48 00 00 20 */	b lbl_80CCEAD0
lbl_80CCEAB4:
/* 80CCEAB4  38 00 00 04 */	li r0, 4
/* 80CCEAB8  48 00 00 18 */	b lbl_80CCEAD0
lbl_80CCEABC:
/* 80CCEABC  38 00 00 07 */	li r0, 7
/* 80CCEAC0  48 00 00 10 */	b lbl_80CCEAD0
lbl_80CCEAC4:
/* 80CCEAC4  38 00 00 08 */	li r0, 8
/* 80CCEAC8  48 00 00 08 */	b lbl_80CCEAD0
lbl_80CCEACC:
/* 80CCEACC  38 00 00 03 */	li r0, 3
lbl_80CCEAD0:
/* 80CCEAD0  54 00 18 38 */	slwi r0, r0, 3
/* 80CCEAD4  7C BE 00 2E */	lwzx r5, r30, r0
/* 80CCEAD8  3C 60 80 CD */	lis r3, l_bmdData@ha /* 0x80CD5EF8@ha */
/* 80CCEADC  38 63 5E F8 */	addi r3, r3, l_bmdData@l /* 0x80CD5EF8@l */
/* 80CCEAE0  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CCEAE4  54 A0 10 3A */	slwi r0, r5, 2
/* 80CCEAE8  3C 60 80 CD */	lis r3, l_resNameList@ha /* 0x80CD5F90@ha */
/* 80CCEAEC  38 63 5F 90 */	addi r3, r3, l_resNameList@l /* 0x80CD5F90@l */
/* 80CCEAF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CCEAF4  7F A5 EB 78 */	mr r5, r29
/* 80CCEAF8  38 C0 00 80 */	li r6, 0x80
/* 80CCEAFC  4B 36 D7 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCEB00  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CCEB04  40 82 00 0C */	bne lbl_80CCEB10
/* 80CCEB08  38 60 00 00 */	li r3, 0
/* 80CCEB0C  48 00 01 30 */	b lbl_80CCEC3C
lbl_80CCEB10:
/* 80CCEB10  38 60 00 58 */	li r3, 0x58
/* 80CCEB14  4B 60 01 39 */	bl __nw__FUl
/* 80CCEB18  7C 60 1B 79 */	or. r0, r3, r3
/* 80CCEB1C  41 82 00 4C */	beq lbl_80CCEB68
/* 80CCEB20  38 00 00 00 */	li r0, 0
/* 80CCEB24  90 01 00 08 */	stw r0, 8(r1)
/* 80CCEB28  3C 00 00 08 */	lis r0, 8
/* 80CCEB2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCEB30  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 80CCEB34  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 80CCEB38  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCEB3C  7F A4 EB 78 */	mr r4, r29
/* 80CCEB40  38 A0 00 00 */	li r5, 0
/* 80CCEB44  38 C0 00 00 */	li r6, 0
/* 80CCEB48  38 E0 00 00 */	li r7, 0
/* 80CCEB4C  39 00 FF FF */	li r8, -1
/* 80CCEB50  3D 20 80 CD */	lis r9, lit_4533@ha /* 0x80CD5DC8@ha */
/* 80CCEB54  C0 29 5D C8 */	lfs f1, lit_4533@l(r9)  /* 0x80CD5DC8@l */
/* 80CCEB58  39 20 00 00 */	li r9, 0
/* 80CCEB5C  39 40 FF FF */	li r10, -1
/* 80CCEB60  4B 34 1C 71 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80CCEB64  7C 60 1B 78 */	mr r0, r3
lbl_80CCEB68:
/* 80CCEB68  90 1C 0E 40 */	stw r0, 0xe40(r28)
/* 80CCEB6C  80 7C 0E 40 */	lwz r3, 0xe40(r28)
/* 80CCEB70  28 03 00 00 */	cmplwi r3, 0
/* 80CCEB74  41 82 00 10 */	beq lbl_80CCEB84
/* 80CCEB78  80 03 00 04 */	lwz r0, 4(r3)
/* 80CCEB7C  28 00 00 00 */	cmplwi r0, 0
/* 80CCEB80  40 82 00 0C */	bne lbl_80CCEB8C
lbl_80CCEB84:
/* 80CCEB84  38 60 00 00 */	li r3, 0
/* 80CCEB88  48 00 00 B4 */	b lbl_80CCEC3C
lbl_80CCEB8C:
/* 80CCEB8C  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CCEB90  28 00 00 06 */	cmplwi r0, 6
/* 80CCEB94  40 82 00 58 */	bne lbl_80CCEBEC
/* 80CCEB98  7F 83 E3 78 */	mr r3, r28
/* 80CCEB9C  38 80 00 00 */	li r4, 0
/* 80CCEBA0  38 A0 00 00 */	li r5, 0
/* 80CCEBA4  4B 47 B7 E5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80CCEBA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCEBAC  41 82 00 38 */	beq lbl_80CCEBE4
/* 80CCEBB0  7F 83 E3 78 */	mr r3, r28
/* 80CCEBB4  38 80 00 17 */	li r4, 0x17
/* 80CCEBB8  3C A0 80 CD */	lis r5, lit_4350@ha /* 0x80CD5DBC@ha */
/* 80CCEBBC  C0 25 5D BC */	lfs f1, lit_4350@l(r5)  /* 0x80CD5DBC@l */
/* 80CCEBC0  38 A0 00 00 */	li r5, 0
/* 80CCEBC4  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80CCEBC8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80CCEBCC  7D 89 03 A6 */	mtctr r12
/* 80CCEBD0  4E 80 04 21 */	bctrl 
/* 80CCEBD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCEBD8  41 82 00 0C */	beq lbl_80CCEBE4
/* 80CCEBDC  38 60 00 01 */	li r3, 1
/* 80CCEBE0  48 00 00 5C */	b lbl_80CCEC3C
lbl_80CCEBE4:
/* 80CCEBE4  38 60 00 00 */	li r3, 0
/* 80CCEBE8  48 00 00 54 */	b lbl_80CCEC3C
lbl_80CCEBEC:
/* 80CCEBEC  7F 83 E3 78 */	mr r3, r28
/* 80CCEBF0  38 80 00 00 */	li r4, 0
/* 80CCEBF4  38 A0 00 00 */	li r5, 0
/* 80CCEBF8  4B 47 B7 91 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80CCEBFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCEC00  41 82 00 38 */	beq lbl_80CCEC38
/* 80CCEC04  7F 83 E3 78 */	mr r3, r28
/* 80CCEC08  38 80 00 00 */	li r4, 0
/* 80CCEC0C  3C A0 80 CD */	lis r5, lit_4350@ha /* 0x80CD5DBC@ha */
/* 80CCEC10  C0 25 5D BC */	lfs f1, lit_4350@l(r5)  /* 0x80CD5DBC@l */
/* 80CCEC14  38 A0 00 00 */	li r5, 0
/* 80CCEC18  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80CCEC1C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80CCEC20  7D 89 03 A6 */	mtctr r12
/* 80CCEC24  4E 80 04 21 */	bctrl 
/* 80CCEC28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCEC2C  41 82 00 0C */	beq lbl_80CCEC38
/* 80CCEC30  38 60 00 01 */	li r3, 1
/* 80CCEC34  48 00 00 08 */	b lbl_80CCEC3C
lbl_80CCEC38:
/* 80CCEC38  38 60 00 00 */	li r3, 0
lbl_80CCEC3C:
/* 80CCEC3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCEC40  4B 69 35 E5 */	bl _restgpr_28
/* 80CCEC44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCEC48  7C 08 03 A6 */	mtlr r0
/* 80CCEC4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCEC50  4E 80 00 20 */	blr 
