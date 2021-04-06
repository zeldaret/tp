lbl_806D8DAC:
/* 806D8DAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806D8DB0  7C 08 02 A6 */	mflr r0
/* 806D8DB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 806D8DB8  39 61 00 80 */	addi r11, r1, 0x80
/* 806D8DBC  4B C8 94 11 */	bl _savegpr_25
/* 806D8DC0  7C 79 1B 78 */	mr r25, r3
/* 806D8DC4  3C 80 80 6E */	lis r4, lit_1109@ha /* 0x806DF288@ha */
/* 806D8DC8  3B C4 F2 88 */	addi r30, r4, lit_1109@l /* 0x806DF288@l */
/* 806D8DCC  3C 80 80 6E */	lis r4, lit_3763@ha /* 0x806DEE38@ha */
/* 806D8DD0  3B E4 EE 38 */	addi r31, r4, lit_3763@l /* 0x806DEE38@l */
/* 806D8DD4  3B A0 00 00 */	li r29, 0
/* 806D8DD8  3B 80 00 00 */	li r28, 0
/* 806D8DDC  80 A3 05 B4 */	lwz r5, 0x5b4(r3)
/* 806D8DE0  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 806D8DE4  FC 00 00 1E */	fctiwz f0, f0
/* 806D8DE8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806D8DEC  83 61 00 5C */	lwz r27, 0x5c(r1)
/* 806D8DF0  3B 40 00 01 */	li r26, 1
/* 806D8DF4  A8 03 06 58 */	lha r0, 0x658(r3)
/* 806D8DF8  28 00 00 0D */	cmplwi r0, 0xd
/* 806D8DFC  41 81 05 70 */	bgt lbl_806D936C
/* 806D8E00  3C 80 80 6E */	lis r4, lit_4215@ha /* 0x806DF090@ha */
/* 806D8E04  38 84 F0 90 */	addi r4, r4, lit_4215@l /* 0x806DF090@l */
/* 806D8E08  54 00 10 3A */	slwi r0, r0, 2
/* 806D8E0C  7C 04 00 2E */	lwzx r0, r4, r0
/* 806D8E10  7C 09 03 A6 */	mtctr r0
/* 806D8E14  4E 80 04 20 */	bctr 
lbl_806D8E18:
/* 806D8E18  88 19 0D 1F */	lbz r0, 0xd1f(r25)
/* 806D8E1C  7C 00 07 75 */	extsb. r0, r0
/* 806D8E20  40 82 00 4C */	bne lbl_806D8E6C
/* 806D8E24  38 80 00 04 */	li r4, 4
/* 806D8E28  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806D8E2C  38 A0 00 00 */	li r5, 0
/* 806D8E30  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8E34  4B FF F7 45 */	bl anm_init__FP11e_gob_classifUcf
/* 806D8E38  38 00 00 01 */	li r0, 1
/* 806D8E3C  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D8E40  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701EE@ha */
/* 806D8E44  38 03 01 EE */	addi r0, r3, 0x01EE /* 0x000701EE@l */
/* 806D8E48  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D8E4C  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D8E50  38 81 00 44 */	addi r4, r1, 0x44
/* 806D8E54  38 A0 FF FF */	li r5, -1
/* 806D8E58  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D8E5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D8E60  7D 89 03 A6 */	mtctr r12
/* 806D8E64  4E 80 04 21 */	bctrl 
/* 806D8E68  48 00 05 04 */	b lbl_806D936C
lbl_806D8E6C:
/* 806D8E6C  38 80 00 07 */	li r4, 7
/* 806D8E70  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806D8E74  38 A0 00 00 */	li r5, 0
/* 806D8E78  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8E7C  4B FF F6 FD */	bl anm_init__FP11e_gob_classifUcf
/* 806D8E80  38 00 00 0B */	li r0, 0xb
/* 806D8E84  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D8E88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F1@ha */
/* 806D8E8C  38 03 01 F1 */	addi r0, r3, 0x01F1 /* 0x000701F1@l */
/* 806D8E90  90 01 00 40 */	stw r0, 0x40(r1)
/* 806D8E94  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D8E98  38 81 00 40 */	addi r4, r1, 0x40
/* 806D8E9C  38 A0 FF FF */	li r5, -1
/* 806D8EA0  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D8EA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D8EA8  7D 89 03 A6 */	mtctr r12
/* 806D8EAC  4E 80 04 21 */	bctrl 
/* 806D8EB0  48 00 04 BC */	b lbl_806D936C
lbl_806D8EB4:
/* 806D8EB4  3B 80 00 01 */	li r28, 1
/* 806D8EB8  38 60 00 01 */	li r3, 1
/* 806D8EBC  88 05 00 11 */	lbz r0, 0x11(r5)
/* 806D8EC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D8EC4  40 82 00 18 */	bne lbl_806D8EDC
/* 806D8EC8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D8ECC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 806D8ED0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D8ED4  41 82 00 08 */	beq lbl_806D8EDC
/* 806D8ED8  38 60 00 00 */	li r3, 0
lbl_806D8EDC:
/* 806D8EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806D8EE0  41 82 04 8C */	beq lbl_806D936C
/* 806D8EE4  38 00 00 02 */	li r0, 2
/* 806D8EE8  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D8EEC  7F 23 CB 78 */	mr r3, r25
/* 806D8EF0  38 80 00 05 */	li r4, 5
/* 806D8EF4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D8EF8  38 A0 00 02 */	li r5, 2
/* 806D8EFC  FC 40 08 90 */	fmr f2, f1
/* 806D8F00  4B FF F6 79 */	bl anm_init__FP11e_gob_classifUcf
/* 806D8F04  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806D8F08  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 806D8F0C  B0 19 06 74 */	sth r0, 0x674(r25)
/* 806D8F10  48 00 04 5C */	b lbl_806D936C
lbl_806D8F14:
/* 806D8F14  3B 80 00 01 */	li r28, 1
/* 806D8F18  2C 1B 00 01 */	cmpwi r27, 1
/* 806D8F1C  40 82 00 30 */	bne lbl_806D8F4C
/* 806D8F20  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E2@ha */
/* 806D8F24  38 03 01 E2 */	addi r0, r3, 0x01E2 /* 0x000701E2@l */
/* 806D8F28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D8F2C  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D8F30  38 81 00 3C */	addi r4, r1, 0x3c
/* 806D8F34  38 A0 00 00 */	li r5, 0
/* 806D8F38  38 C0 FF FF */	li r6, -1
/* 806D8F3C  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D8F40  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D8F44  7D 89 03 A6 */	mtctr r12
/* 806D8F48  4E 80 04 21 */	bctrl 
lbl_806D8F4C:
/* 806D8F4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701EF@ha */
/* 806D8F50  38 03 01 EF */	addi r0, r3, 0x01EF /* 0x000701EF@l */
/* 806D8F54  90 01 00 38 */	stw r0, 0x38(r1)
/* 806D8F58  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D8F5C  38 81 00 38 */	addi r4, r1, 0x38
/* 806D8F60  38 A0 FF FF */	li r5, -1
/* 806D8F64  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D8F68  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806D8F6C  7D 89 03 A6 */	mtctr r12
/* 806D8F70  4E 80 04 21 */	bctrl 
/* 806D8F74  A8 19 06 74 */	lha r0, 0x674(r25)
/* 806D8F78  2C 00 00 00 */	cmpwi r0, 0
/* 806D8F7C  40 82 03 F0 */	bne lbl_806D936C
/* 806D8F80  7F 23 CB 78 */	mr r3, r25
/* 806D8F84  38 80 00 06 */	li r4, 6
/* 806D8F88  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D8F8C  38 A0 00 00 */	li r5, 0
/* 806D8F90  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8F94  4B FF F5 E5 */	bl anm_init__FP11e_gob_classifUcf
/* 806D8F98  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E3@ha */
/* 806D8F9C  38 03 01 E3 */	addi r0, r3, 0x01E3 /* 0x000701E3@l */
/* 806D8FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D8FA4  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D8FA8  38 81 00 34 */	addi r4, r1, 0x34
/* 806D8FAC  38 A0 00 00 */	li r5, 0
/* 806D8FB0  38 C0 FF FF */	li r6, -1
/* 806D8FB4  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D8FB8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D8FBC  7D 89 03 A6 */	mtctr r12
/* 806D8FC0  4E 80 04 21 */	bctrl 
/* 806D8FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D8FC8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D8FCC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806D8FD0  38 80 00 00 */	li r4, 0
/* 806D8FD4  90 81 00 08 */	stw r4, 8(r1)
/* 806D8FD8  38 00 FF FF */	li r0, -1
/* 806D8FDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D8FE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D8FE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D8FE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D8FEC  38 80 00 00 */	li r4, 0
/* 806D8FF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008422@ha */
/* 806D8FF4  38 A5 84 22 */	addi r5, r5, 0x8422 /* 0x00008422@l */
/* 806D8FF8  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 806D8FFC  38 E0 00 00 */	li r7, 0
/* 806D9000  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 806D9004  39 3E 00 80 */	addi r9, r30, 0x80
/* 806D9008  39 40 00 FF */	li r10, 0xff
/* 806D900C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D9010  4B 97 3A 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9014  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806D9018  38 80 00 00 */	li r4, 0
/* 806D901C  90 81 00 08 */	stw r4, 8(r1)
/* 806D9020  38 00 FF FF */	li r0, -1
/* 806D9024  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D9028  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D902C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D9030  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D9034  38 80 00 00 */	li r4, 0
/* 806D9038  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008423@ha */
/* 806D903C  38 A5 84 23 */	addi r5, r5, 0x8423 /* 0x00008423@l */
/* 806D9040  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 806D9044  38 E0 00 00 */	li r7, 0
/* 806D9048  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 806D904C  39 3E 00 80 */	addi r9, r30, 0x80
/* 806D9050  39 40 00 FF */	li r10, 0xff
/* 806D9054  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D9058  4B 97 3A 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D905C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F0@ha */
/* 806D9060  38 03 01 F0 */	addi r0, r3, 0x01F0 /* 0x000701F0@l */
/* 806D9064  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D9068  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D906C  38 81 00 30 */	addi r4, r1, 0x30
/* 806D9070  38 A0 FF FF */	li r5, -1
/* 806D9074  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D9078  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D907C  7D 89 03 A6 */	mtctr r12
/* 806D9080  4E 80 04 21 */	bctrl 
/* 806D9084  38 00 00 03 */	li r0, 3
/* 806D9088  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D908C  48 00 02 E0 */	b lbl_806D936C
lbl_806D9090:
/* 806D9090  3B 40 00 00 */	li r26, 0
/* 806D9094  38 00 04 00 */	li r0, 0x400
/* 806D9098  B0 19 06 A8 */	sth r0, 0x6a8(r25)
/* 806D909C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 806D90A0  40 80 00 0C */	bge lbl_806D90AC
/* 806D90A4  38 00 00 01 */	li r0, 1
/* 806D90A8  98 19 0D 1D */	stb r0, 0xd1d(r25)
lbl_806D90AC:
/* 806D90AC  80 79 05 B4 */	lwz r3, 0x5b4(r25)
/* 806D90B0  38 80 00 01 */	li r4, 1
/* 806D90B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D90B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D90BC  40 82 00 18 */	bne lbl_806D90D4
/* 806D90C0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D90C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D90C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D90CC  41 82 00 08 */	beq lbl_806D90D4
/* 806D90D0  38 80 00 00 */	li r4, 0
lbl_806D90D4:
/* 806D90D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D90D8  41 82 02 94 */	beq lbl_806D936C
/* 806D90DC  3B A0 00 01 */	li r29, 1
/* 806D90E0  48 00 02 8C */	b lbl_806D936C
lbl_806D90E4:
/* 806D90E4  3B 80 00 01 */	li r28, 1
/* 806D90E8  38 60 00 01 */	li r3, 1
/* 806D90EC  88 05 00 11 */	lbz r0, 0x11(r5)
/* 806D90F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D90F4  40 82 00 18 */	bne lbl_806D910C
/* 806D90F8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D90FC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 806D9100  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D9104  41 82 00 08 */	beq lbl_806D910C
/* 806D9108  38 60 00 00 */	li r3, 0
lbl_806D910C:
/* 806D910C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806D9110  41 82 02 5C */	beq lbl_806D936C
/* 806D9114  38 00 00 0C */	li r0, 0xc
/* 806D9118  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D911C  7F 23 CB 78 */	mr r3, r25
/* 806D9120  38 80 00 08 */	li r4, 8
/* 806D9124  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D9128  38 A0 00 02 */	li r5, 2
/* 806D912C  FC 40 08 90 */	fmr f2, f1
/* 806D9130  4B FF F4 49 */	bl anm_init__FP11e_gob_classifUcf
/* 806D9134  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806D9138  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 806D913C  B0 19 06 74 */	sth r0, 0x674(r25)
/* 806D9140  48 00 02 2C */	b lbl_806D936C
lbl_806D9144:
/* 806D9144  3B 80 00 01 */	li r28, 1
/* 806D9148  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F2@ha */
/* 806D914C  38 03 01 F2 */	addi r0, r3, 0x01F2 /* 0x000701F2@l */
/* 806D9150  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D9154  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D9158  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D915C  38 A0 FF FF */	li r5, -1
/* 806D9160  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D9164  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806D9168  7D 89 03 A6 */	mtctr r12
/* 806D916C  4E 80 04 21 */	bctrl 
/* 806D9170  A8 19 06 74 */	lha r0, 0x674(r25)
/* 806D9174  2C 00 00 00 */	cmpwi r0, 0
/* 806D9178  40 82 01 F4 */	bne lbl_806D936C
/* 806D917C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E4@ha */
/* 806D9180  38 03 01 E4 */	addi r0, r3, 0x01E4 /* 0x000701E4@l */
/* 806D9184  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D9188  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D918C  38 81 00 28 */	addi r4, r1, 0x28
/* 806D9190  38 A0 00 00 */	li r5, 0
/* 806D9194  38 C0 FF FF */	li r6, -1
/* 806D9198  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D919C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D91A0  7D 89 03 A6 */	mtctr r12
/* 806D91A4  4E 80 04 21 */	bctrl 
/* 806D91A8  7F 23 CB 78 */	mr r3, r25
/* 806D91AC  38 80 00 09 */	li r4, 9
/* 806D91B0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D91B4  38 A0 00 00 */	li r5, 0
/* 806D91B8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D91BC  4B FF F3 BD */	bl anm_init__FP11e_gob_classifUcf
/* 806D91C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D91C4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D91C8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806D91CC  38 80 00 00 */	li r4, 0
/* 806D91D0  90 81 00 08 */	stw r4, 8(r1)
/* 806D91D4  38 00 FF FF */	li r0, -1
/* 806D91D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D91DC  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D91E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D91E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D91E8  38 80 00 00 */	li r4, 0
/* 806D91EC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008424@ha */
/* 806D91F0  38 A5 84 24 */	addi r5, r5, 0x8424 /* 0x00008424@l */
/* 806D91F4  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 806D91F8  38 E0 00 00 */	li r7, 0
/* 806D91FC  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 806D9200  39 3E 00 80 */	addi r9, r30, 0x80
/* 806D9204  39 40 00 FF */	li r10, 0xff
/* 806D9208  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D920C  4B 97 38 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9210  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806D9214  38 80 00 00 */	li r4, 0
/* 806D9218  90 81 00 08 */	stw r4, 8(r1)
/* 806D921C  38 00 FF FF */	li r0, -1
/* 806D9220  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D9224  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D9228  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D922C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D9230  38 80 00 00 */	li r4, 0
/* 806D9234  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008425@ha */
/* 806D9238  38 A5 84 25 */	addi r5, r5, 0x8425 /* 0x00008425@l */
/* 806D923C  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 806D9240  38 E0 00 00 */	li r7, 0
/* 806D9244  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 806D9248  39 3E 00 80 */	addi r9, r30, 0x80
/* 806D924C  39 40 00 FF */	li r10, 0xff
/* 806D9250  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D9254  4B 97 38 3D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9258  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F3@ha */
/* 806D925C  38 03 01 F3 */	addi r0, r3, 0x01F3 /* 0x000701F3@l */
/* 806D9260  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D9264  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D9268  38 81 00 24 */	addi r4, r1, 0x24
/* 806D926C  38 A0 FF FF */	li r5, -1
/* 806D9270  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D9274  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D9278  7D 89 03 A6 */	mtctr r12
/* 806D927C  4E 80 04 21 */	bctrl 
/* 806D9280  38 00 00 0D */	li r0, 0xd
/* 806D9284  B0 19 06 58 */	sth r0, 0x658(r25)
/* 806D9288  48 00 00 E4 */	b lbl_806D936C
lbl_806D928C:
/* 806D928C  3B 40 00 00 */	li r26, 0
/* 806D9290  38 00 04 00 */	li r0, 0x400
/* 806D9294  B0 19 06 A8 */	sth r0, 0x6a8(r25)
/* 806D9298  2C 1B 00 04 */	cmpwi r27, 4
/* 806D929C  40 82 00 30 */	bne lbl_806D92CC
/* 806D92A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E5@ha */
/* 806D92A4  38 03 01 E5 */	addi r0, r3, 0x01E5 /* 0x000701E5@l */
/* 806D92A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D92AC  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 806D92B0  38 81 00 20 */	addi r4, r1, 0x20
/* 806D92B4  38 A0 00 00 */	li r5, 0
/* 806D92B8  38 C0 FF FF */	li r6, -1
/* 806D92BC  81 99 05 B8 */	lwz r12, 0x5b8(r25)
/* 806D92C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D92C4  7D 89 03 A6 */	mtctr r12
/* 806D92C8  4E 80 04 21 */	bctrl 
lbl_806D92CC:
/* 806D92CC  2C 1B 00 0A */	cmpwi r27, 0xa
/* 806D92D0  40 80 00 0C */	bge lbl_806D92DC
/* 806D92D4  38 00 00 01 */	li r0, 1
/* 806D92D8  98 19 0D 1D */	stb r0, 0xd1d(r25)
lbl_806D92DC:
/* 806D92DC  2C 1B 00 05 */	cmpwi r27, 5
/* 806D92E0  40 82 00 58 */	bne lbl_806D9338
/* 806D92E4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D92E8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806D92EC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806D92F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806D92F4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 806D92F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D92FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D9300  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806D9304  38 80 00 05 */	li r4, 5
/* 806D9308  38 A0 00 1F */	li r5, 0x1f
/* 806D930C  38 C1 00 48 */	addi r6, r1, 0x48
/* 806D9310  4B 99 67 15 */	bl StartShock__12dVibration_cFii4cXyz
/* 806D9314  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806D9318  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 806D931C  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 806D9320  38 00 08 02 */	li r0, 0x802
/* 806D9324  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 806D9328  B0 03 05 98 */	sth r0, 0x598(r3)
/* 806D932C  38 00 07 08 */	li r0, 0x708
/* 806D9330  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 806D9334  B0 03 05 9A */	sth r0, 0x59a(r3)
lbl_806D9338:
/* 806D9338  80 79 05 B4 */	lwz r3, 0x5b4(r25)
/* 806D933C  38 80 00 01 */	li r4, 1
/* 806D9340  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D9344  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D9348  40 82 00 18 */	bne lbl_806D9360
/* 806D934C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D9350  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D9354  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D9358  41 82 00 08 */	beq lbl_806D9360
/* 806D935C  38 80 00 00 */	li r4, 0
lbl_806D9360:
/* 806D9360  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D9364  41 82 00 08 */	beq lbl_806D936C
/* 806D9368  3B A0 00 01 */	li r29, 1
lbl_806D936C:
/* 806D936C  38 79 05 2C */	addi r3, r25, 0x52c
/* 806D9370  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D9374  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806D9378  4B B9 67 09 */	bl cLib_addCalc0__FPfff
/* 806D937C  7F A0 07 75 */	extsb. r0, r29
/* 806D9380  41 82 00 14 */	beq lbl_806D9394
/* 806D9384  38 00 00 02 */	li r0, 2
/* 806D9388  B0 19 06 56 */	sth r0, 0x656(r25)
/* 806D938C  38 00 00 00 */	li r0, 0
/* 806D9390  B0 19 06 58 */	sth r0, 0x658(r25)
lbl_806D9394:
/* 806D9394  7F 80 07 75 */	extsb. r0, r28
/* 806D9398  41 82 00 18 */	beq lbl_806D93B0
/* 806D939C  38 79 04 DE */	addi r3, r25, 0x4de
/* 806D93A0  A8 99 06 6A */	lha r4, 0x66a(r25)
/* 806D93A4  38 A0 00 02 */	li r5, 2
/* 806D93A8  38 C0 08 00 */	li r6, 0x800
/* 806D93AC  4B B9 72 5D */	bl cLib_addCalcAngleS2__FPssss
lbl_806D93B0:
/* 806D93B0  7F 43 D3 78 */	mr r3, r26
/* 806D93B4  39 61 00 80 */	addi r11, r1, 0x80
/* 806D93B8  4B C8 8E 61 */	bl _restgpr_25
/* 806D93BC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806D93C0  7C 08 03 A6 */	mtlr r0
/* 806D93C4  38 21 00 80 */	addi r1, r1, 0x80
/* 806D93C8  4E 80 00 20 */	blr 
