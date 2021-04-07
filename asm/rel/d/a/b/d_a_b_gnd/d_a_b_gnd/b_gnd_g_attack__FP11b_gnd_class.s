lbl_805F7E88:
/* 805F7E88  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805F7E8C  7C 08 02 A6 */	mflr r0
/* 805F7E90  90 01 00 64 */	stw r0, 0x64(r1)
/* 805F7E94  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805F7E98  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805F7E9C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805F7EA0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805F7EA4  39 61 00 40 */	addi r11, r1, 0x40
/* 805F7EA8  4B D6 A3 25 */	bl _savegpr_25
/* 805F7EAC  7C 79 1B 78 */	mr r25, r3
/* 805F7EB0  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F7EB4  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F7EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F7EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F7EC0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805F7EC4  C3 FE 00 14 */	lfs f31, 0x14(r30)
/* 805F7EC8  C3 DE 00 84 */	lfs f30, 0x84(r30)
/* 805F7ECC  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F7ED0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F7ED4  FC 00 00 1E */	fctiwz f0, f0
/* 805F7ED8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F7EDC  83 81 00 14 */	lwz r28, 0x14(r1)
/* 805F7EE0  3B 60 00 00 */	li r27, 0
/* 805F7EE4  80 19 1F B4 */	lwz r0, 0x1fb4(r25)
/* 805F7EE8  90 01 00 08 */	stw r0, 8(r1)
/* 805F7EEC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F7EF0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F7EF4  38 81 00 08 */	addi r4, r1, 8
/* 805F7EF8  4B A2 19 01 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F7EFC  7C 7F 1B 78 */	mr r31, r3
/* 805F7F00  3B 40 00 01 */	li r26, 1
/* 805F7F04  A8 19 05 BC */	lha r0, 0x5bc(r25)
/* 805F7F08  28 00 00 12 */	cmplwi r0, 0x12
/* 805F7F0C  41 81 08 2C */	bgt lbl_805F8738
/* 805F7F10  3C 60 80 60 */	lis r3, lit_5543@ha /* 0x80602A88@ha */
/* 805F7F14  38 63 2A 88 */	addi r3, r3, lit_5543@l /* 0x80602A88@l */
/* 805F7F18  54 00 10 3A */	slwi r0, r0, 2
/* 805F7F1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F7F20  7C 09 03 A6 */	mtctr r0
/* 805F7F24  4E 80 04 20 */	bctr 
lbl_805F7F28:
/* 805F7F28  38 00 00 01 */	li r0, 1
/* 805F7F2C  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7F30  7F 23 CB 78 */	mr r3, r25
/* 805F7F34  38 80 00 13 */	li r4, 0x13
/* 805F7F38  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F7F3C  38 A0 00 00 */	li r5, 0
/* 805F7F40  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7F44  4B FF CB 51 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7F48  48 00 07 F0 */	b lbl_805F8738
lbl_805F7F4C:
/* 805F7F4C  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F7F50  41 80 00 20 */	blt lbl_805F7F70
/* 805F7F54  2C 1C 00 1C */	cmpwi r28, 0x1c
/* 805F7F58  41 81 00 18 */	bgt lbl_805F7F70
/* 805F7F5C  38 00 00 01 */	li r0, 1
/* 805F7F60  98 19 0C 77 */	stb r0, 0xc77(r25)
/* 805F7F64  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F7F68  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F7F6C  3B 40 00 00 */	li r26, 0
lbl_805F7F70:
/* 805F7F70  2C 1C 00 2C */	cmpwi r28, 0x2c
/* 805F7F74  41 80 00 14 */	blt lbl_805F7F88
/* 805F7F78  2C 1C 00 32 */	cmpwi r28, 0x32
/* 805F7F7C  41 81 00 0C */	bgt lbl_805F7F88
/* 805F7F80  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805F7F84  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F7F88:
/* 805F7F88  2C 1C 00 19 */	cmpwi r28, 0x19
/* 805F7F8C  40 82 00 0C */	bne lbl_805F7F98
/* 805F7F90  38 00 00 01 */	li r0, 1
/* 805F7F94  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F7F98:
/* 805F7F98  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F7F9C  41 80 00 1C */	blt lbl_805F7FB8
/* 805F7FA0  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 805F7FA4  41 81 00 14 */	bgt lbl_805F7FB8
/* 805F7FA8  38 00 00 50 */	li r0, 0x50
/* 805F7FAC  B0 19 0C 24 */	sth r0, 0xc24(r25)
/* 805F7FB0  38 00 F4 48 */	li r0, -3000
/* 805F7FB4  B0 19 0C 28 */	sth r0, 0xc28(r25)
lbl_805F7FB8:
/* 805F7FB8  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F7FBC  38 80 00 01 */	li r4, 1
/* 805F7FC0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F7FC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7FC8  40 82 00 18 */	bne lbl_805F7FE0
/* 805F7FCC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F7FD0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F7FD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F7FD8  41 82 00 08 */	beq lbl_805F7FE0
/* 805F7FDC  38 80 00 00 */	li r4, 0
lbl_805F7FE0:
/* 805F7FE0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F7FE4  41 82 07 54 */	beq lbl_805F8738
/* 805F7FE8  38 00 00 0A */	li r0, 0xa
/* 805F7FEC  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F7FF0  38 00 00 00 */	li r0, 0
/* 805F7FF4  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7FF8  48 00 07 40 */	b lbl_805F8738
lbl_805F7FFC:
/* 805F7FFC  38 00 00 03 */	li r0, 3
/* 805F8000  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8004  7F 23 CB 78 */	mr r3, r25
/* 805F8008  38 80 00 14 */	li r4, 0x14
/* 805F800C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8010  38 A0 00 00 */	li r5, 0
/* 805F8014  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8018  4B FF CA 7D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F801C  48 00 07 1C */	b lbl_805F8738
lbl_805F8020:
/* 805F8020  2C 1C 00 19 */	cmpwi r28, 0x19
/* 805F8024  40 80 00 08 */	bge lbl_805F802C
/* 805F8028  3B 40 00 00 */	li r26, 0
lbl_805F802C:
/* 805F802C  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805F8030  41 80 00 14 */	blt lbl_805F8044
/* 805F8034  2C 1C 00 17 */	cmpwi r28, 0x17
/* 805F8038  41 81 00 0C */	bgt lbl_805F8044
/* 805F803C  38 00 00 01 */	li r0, 1
/* 805F8040  98 19 0C 77 */	stb r0, 0xc77(r25)
lbl_805F8044:
/* 805F8044  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805F8048  41 80 00 14 */	blt lbl_805F805C
/* 805F804C  2C 1C 00 13 */	cmpwi r28, 0x13
/* 805F8050  41 81 00 0C */	bgt lbl_805F805C
/* 805F8054  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F8058  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F805C:
/* 805F805C  2C 1C 00 25 */	cmpwi r28, 0x25
/* 805F8060  41 80 00 14 */	blt lbl_805F8074
/* 805F8064  2C 1C 00 2F */	cmpwi r28, 0x2f
/* 805F8068  41 81 00 0C */	bgt lbl_805F8074
/* 805F806C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805F8070  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F8074:
/* 805F8074  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F8078  40 82 00 0C */	bne lbl_805F8084
/* 805F807C  38 00 00 01 */	li r0, 1
/* 805F8080  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F8084:
/* 805F8084  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F8088  38 80 00 01 */	li r4, 1
/* 805F808C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8090  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8094  40 82 00 18 */	bne lbl_805F80AC
/* 805F8098  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F809C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F80A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F80A4  41 82 00 08 */	beq lbl_805F80AC
/* 805F80A8  38 80 00 00 */	li r4, 0
lbl_805F80AC:
/* 805F80AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F80B0  41 82 06 88 */	beq lbl_805F8738
/* 805F80B4  38 00 00 0A */	li r0, 0xa
/* 805F80B8  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F80BC  38 00 00 00 */	li r0, 0
/* 805F80C0  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F80C4  48 00 06 74 */	b lbl_805F8738
lbl_805F80C8:
/* 805F80C8  38 00 00 05 */	li r0, 5
/* 805F80CC  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F80D0  7F 23 CB 78 */	mr r3, r25
/* 805F80D4  38 80 00 18 */	li r4, 0x18
/* 805F80D8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F80DC  38 A0 00 00 */	li r5, 0
/* 805F80E0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F80E4  4B FF C9 B1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F80E8  48 00 06 50 */	b lbl_805F8738
lbl_805F80EC:
/* 805F80EC  2C 1C 00 03 */	cmpwi r28, 3
/* 805F80F0  41 80 00 14 */	blt lbl_805F8104
/* 805F80F4  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805F80F8  41 81 00 0C */	bgt lbl_805F8104
/* 805F80FC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805F8100  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F8104:
/* 805F8104  2C 1C 00 03 */	cmpwi r28, 3
/* 805F8108  41 80 00 1C */	blt lbl_805F8124
/* 805F810C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805F8110  41 81 00 14 */	bgt lbl_805F8124
/* 805F8114  38 00 00 01 */	li r0, 1
/* 805F8118  98 19 0C 77 */	stb r0, 0xc77(r25)
/* 805F811C  98 19 0C 78 */	stb r0, 0xc78(r25)
/* 805F8120  3B 40 00 00 */	li r26, 0
lbl_805F8124:
/* 805F8124  2C 1C 00 06 */	cmpwi r28, 6
/* 805F8128  40 82 00 0C */	bne lbl_805F8134
/* 805F812C  38 00 00 01 */	li r0, 1
/* 805F8130  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F8134:
/* 805F8134  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F8138  38 80 00 01 */	li r4, 1
/* 805F813C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8140  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8144  40 82 00 18 */	bne lbl_805F815C
/* 805F8148  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F814C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8150  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8154  41 82 00 08 */	beq lbl_805F815C
/* 805F8158  38 80 00 00 */	li r4, 0
lbl_805F815C:
/* 805F815C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8160  41 82 05 D8 */	beq lbl_805F8738
/* 805F8164  38 00 00 0A */	li r0, 0xa
/* 805F8168  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F816C  38 00 00 00 */	li r0, 0
/* 805F8170  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8174  48 00 05 C4 */	b lbl_805F8738
lbl_805F8178:
/* 805F8178  38 00 00 07 */	li r0, 7
/* 805F817C  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8180  7F 23 CB 78 */	mr r3, r25
/* 805F8184  38 80 00 1E */	li r4, 0x1e
/* 805F8188  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805F818C  38 A0 00 00 */	li r5, 0
/* 805F8190  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8194  4B FF C9 01 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8198  48 00 05 A0 */	b lbl_805F8738
lbl_805F819C:
/* 805F819C  38 00 00 0A */	li r0, 0xa
/* 805F81A0  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F81A4  2C 1C 00 23 */	cmpwi r28, 0x23
/* 805F81A8  40 80 00 08 */	bge lbl_805F81B0
/* 805F81AC  3B 40 00 00 */	li r26, 0
lbl_805F81B0:
/* 805F81B0  C3 DE 01 1C */	lfs f30, 0x11c(r30)
/* 805F81B4  2C 1C 00 0D */	cmpwi r28, 0xd
/* 805F81B8  41 80 00 10 */	blt lbl_805F81C8
/* 805F81BC  2C 1C 00 21 */	cmpwi r28, 0x21
/* 805F81C0  41 81 00 08 */	bgt lbl_805F81C8
/* 805F81C4  C3 FE 00 74 */	lfs f31, 0x74(r30)
lbl_805F81C8:
/* 805F81C8  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805F81CC  41 80 00 1C */	blt lbl_805F81E8
/* 805F81D0  2C 1C 00 26 */	cmpwi r28, 0x26
/* 805F81D4  41 81 00 14 */	bgt lbl_805F81E8
/* 805F81D8  38 00 00 01 */	li r0, 1
/* 805F81DC  98 19 0C 77 */	stb r0, 0xc77(r25)
/* 805F81E0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F81E4  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F81E8:
/* 805F81E8  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805F81EC  41 80 00 1C */	blt lbl_805F8208
/* 805F81F0  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 805F81F4  41 81 00 14 */	bgt lbl_805F8208
/* 805F81F8  38 00 00 50 */	li r0, 0x50
/* 805F81FC  B0 19 0C 24 */	sth r0, 0xc24(r25)
/* 805F8200  38 00 F4 48 */	li r0, -3000
/* 805F8204  B0 19 0C 28 */	sth r0, 0xc28(r25)
lbl_805F8208:
/* 805F8208  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F820C  41 82 00 0C */	beq lbl_805F8218
/* 805F8210  2C 1C 00 23 */	cmpwi r28, 0x23
/* 805F8214  40 82 00 0C */	bne lbl_805F8220
lbl_805F8218:
/* 805F8218  38 00 00 01 */	li r0, 1
/* 805F821C  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F8220:
/* 805F8220  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F8224  38 80 00 01 */	li r4, 1
/* 805F8228  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F822C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8230  40 82 00 18 */	bne lbl_805F8248
/* 805F8234  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8238  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F823C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8240  41 82 00 08 */	beq lbl_805F8248
/* 805F8244  38 80 00 00 */	li r4, 0
lbl_805F8248:
/* 805F8248  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F824C  41 82 04 EC */	beq lbl_805F8738
/* 805F8250  38 00 00 0A */	li r0, 0xa
/* 805F8254  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F8258  38 00 00 00 */	li r0, 0
/* 805F825C  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8260  48 00 04 D8 */	b lbl_805F8738
lbl_805F8264:
/* 805F8264  38 00 00 09 */	li r0, 9
/* 805F8268  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F826C  7F 23 CB 78 */	mr r3, r25
/* 805F8270  38 80 00 1F */	li r4, 0x1f
/* 805F8274  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8278  38 A0 00 00 */	li r5, 0
/* 805F827C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8280  4B FF C8 15 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8284  48 00 04 B4 */	b lbl_805F8738
lbl_805F8288:
/* 805F8288  2C 1C 00 19 */	cmpwi r28, 0x19
/* 805F828C  40 80 00 08 */	bge lbl_805F8294
/* 805F8290  3B 40 00 00 */	li r26, 0
lbl_805F8294:
/* 805F8294  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805F8298  41 80 00 0C */	blt lbl_805F82A4
/* 805F829C  2C 1C 00 18 */	cmpwi r28, 0x18
/* 805F82A0  40 81 00 14 */	ble lbl_805F82B4
lbl_805F82A4:
/* 805F82A4  2C 1C 00 21 */	cmpwi r28, 0x21
/* 805F82A8  41 80 00 24 */	blt lbl_805F82CC
/* 805F82AC  2C 1C 00 28 */	cmpwi r28, 0x28
/* 805F82B0  41 81 00 1C */	bgt lbl_805F82CC
lbl_805F82B4:
/* 805F82B4  38 00 00 01 */	li r0, 1
/* 805F82B8  98 19 0C 77 */	stb r0, 0xc77(r25)
/* 805F82BC  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F82C0  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F82C4  38 00 00 50 */	li r0, 0x50
/* 805F82C8  B0 19 0C 24 */	sth r0, 0xc24(r25)
lbl_805F82CC:
/* 805F82CC  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F82D0  41 82 00 0C */	beq lbl_805F82DC
/* 805F82D4  2C 1C 00 26 */	cmpwi r28, 0x26
/* 805F82D8  40 82 00 0C */	bne lbl_805F82E4
lbl_805F82DC:
/* 805F82DC  38 00 00 01 */	li r0, 1
/* 805F82E0  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F82E4:
/* 805F82E4  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F82E8  38 80 00 01 */	li r4, 1
/* 805F82EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F82F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F82F4  40 82 00 18 */	bne lbl_805F830C
/* 805F82F8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F82FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8300  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8304  41 82 00 08 */	beq lbl_805F830C
/* 805F8308  38 80 00 00 */	li r4, 0
lbl_805F830C:
/* 805F830C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8310  41 82 04 28 */	beq lbl_805F8738
/* 805F8314  38 00 00 0A */	li r0, 0xa
/* 805F8318  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F831C  38 00 00 00 */	li r0, 0
/* 805F8320  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8324  48 00 04 14 */	b lbl_805F8738
lbl_805F8328:
/* 805F8328  7F 23 CB 78 */	mr r3, r25
/* 805F832C  38 80 00 15 */	li r4, 0x15
/* 805F8330  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8334  38 A0 00 00 */	li r5, 0
/* 805F8338  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F833C  4B FF C7 59 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8340  38 00 00 0B */	li r0, 0xb
/* 805F8344  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8348  38 00 00 0A */	li r0, 0xa
/* 805F834C  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F8350  48 00 03 E8 */	b lbl_805F8738
lbl_805F8354:
/* 805F8354  38 00 00 0A */	li r0, 0xa
/* 805F8358  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F835C  3B 60 08 00 */	li r27, 0x800
/* 805F8360  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805F8364  41 80 00 10 */	blt lbl_805F8374
/* 805F8368  C3 FE 00 98 */	lfs f31, 0x98(r30)
/* 805F836C  C3 DE 00 74 */	lfs f30, 0x74(r30)
/* 805F8370  3B 40 00 00 */	li r26, 0
lbl_805F8374:
/* 805F8374  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F8378  38 80 00 01 */	li r4, 1
/* 805F837C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8380  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8384  40 82 00 18 */	bne lbl_805F839C
/* 805F8388  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F838C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8390  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8394  41 82 00 08 */	beq lbl_805F839C
/* 805F8398  38 80 00 00 */	li r4, 0
lbl_805F839C:
/* 805F839C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F83A0  41 82 03 98 */	beq lbl_805F8738
/* 805F83A4  7F 23 CB 78 */	mr r3, r25
/* 805F83A8  38 80 00 16 */	li r4, 0x16
/* 805F83AC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F83B0  38 A0 00 02 */	li r5, 2
/* 805F83B4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F83B8  4B FF C6 DD */	bl anm_init__FP11b_gnd_classifUcf
/* 805F83BC  38 00 00 0C */	li r0, 0xc
/* 805F83C0  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F83C4  38 00 00 32 */	li r0, 0x32
/* 805F83C8  B0 19 0C 44 */	sth r0, 0xc44(r25)
lbl_805F83CC:
/* 805F83CC  3B 40 00 00 */	li r26, 0
/* 805F83D0  38 00 00 0A */	li r0, 0xa
/* 805F83D4  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F83D8  38 00 00 01 */	li r0, 1
/* 805F83DC  98 19 0C 79 */	stb r0, 0xc79(r25)
/* 805F83E0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F83E4  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F83E8  C3 FE 00 98 */	lfs f31, 0x98(r30)
/* 805F83EC  C3 DE 00 A4 */	lfs f30, 0xa4(r30)
/* 805F83F0  3B 60 08 00 */	li r27, 0x800
/* 805F83F4  38 00 00 02 */	li r0, 2
/* 805F83F8  98 19 26 98 */	stb r0, 0x2698(r25)
/* 805F83FC  4B B6 6F 9D */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 805F8400  2C 03 00 00 */	cmpwi r3, 0
/* 805F8404  41 82 00 34 */	beq lbl_805F8438
/* 805F8408  C0 39 0C 38 */	lfs f1, 0xc38(r25)
/* 805F840C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805F8410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8414  40 80 00 24 */	bge lbl_805F8438
/* 805F8418  38 00 00 6B */	li r0, 0x6b
/* 805F841C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F8420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F8424  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 805F8428  38 00 00 00 */	li r0, 0
/* 805F842C  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 805F8430  38 00 00 01 */	li r0, 1
/* 805F8434  98 19 27 40 */	stb r0, 0x2740(r25)
lbl_805F8438:
/* 805F8438  A8 19 0C 44 */	lha r0, 0xc44(r25)
/* 805F843C  2C 00 00 00 */	cmpwi r0, 0
/* 805F8440  41 82 00 14 */	beq lbl_805F8454
/* 805F8444  C0 39 0C 38 */	lfs f1, 0xc38(r25)
/* 805F8448  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805F844C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8450  40 80 02 E8 */	bge lbl_805F8738
lbl_805F8454:
/* 805F8454  7F 23 CB 78 */	mr r3, r25
/* 805F8458  38 80 00 17 */	li r4, 0x17
/* 805F845C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F8460  38 A0 00 00 */	li r5, 0
/* 805F8464  FC 40 08 90 */	fmr f2, f1
/* 805F8468  4B FF C6 2D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F846C  38 00 00 0D */	li r0, 0xd
/* 805F8470  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F8474  48 00 02 C4 */	b lbl_805F8738
lbl_805F8478:
/* 805F8478  38 00 00 05 */	li r0, 5
/* 805F847C  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F8480  38 00 00 01 */	li r0, 1
/* 805F8484  98 19 0C 79 */	stb r0, 0xc79(r25)
/* 805F8488  C3 DE 00 74 */	lfs f30, 0x74(r30)
/* 805F848C  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 805F8490  40 80 00 08 */	bge lbl_805F8498
/* 805F8494  3B 40 00 00 */	li r26, 0
lbl_805F8498:
/* 805F8498  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805F849C  41 80 00 14 */	blt lbl_805F84B0
/* 805F84A0  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 805F84A4  41 81 00 0C */	bgt lbl_805F84B0
/* 805F84A8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F84AC  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F84B0:
/* 805F84B0  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 805F84B4  41 80 00 14 */	blt lbl_805F84C8
/* 805F84B8  2C 1C 00 35 */	cmpwi r28, 0x35
/* 805F84BC  41 81 00 0C */	bgt lbl_805F84C8
/* 805F84C0  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805F84C4  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F84C8:
/* 805F84C8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F84CC  41 80 00 14 */	blt lbl_805F84E0
/* 805F84D0  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805F84D4  41 81 00 0C */	bgt lbl_805F84E0
/* 805F84D8  38 00 00 02 */	li r0, 2
/* 805F84DC  98 19 0C 77 */	stb r0, 0xc77(r25)
lbl_805F84E0:
/* 805F84E0  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805F84E4  41 80 00 14 */	blt lbl_805F84F8
/* 805F84E8  2C 1C 00 17 */	cmpwi r28, 0x17
/* 805F84EC  41 81 00 0C */	bgt lbl_805F84F8
/* 805F84F0  38 00 00 50 */	li r0, 0x50
/* 805F84F4  B0 19 0C 24 */	sth r0, 0xc24(r25)
lbl_805F84F8:
/* 805F84F8  2C 1C 00 19 */	cmpwi r28, 0x19
/* 805F84FC  40 82 00 0C */	bne lbl_805F8508
/* 805F8500  38 00 00 01 */	li r0, 1
/* 805F8504  98 19 26 98 */	stb r0, 0x2698(r25)
lbl_805F8508:
/* 805F8508  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F850C  38 80 00 01 */	li r4, 1
/* 805F8510  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8514  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8518  40 82 00 18 */	bne lbl_805F8530
/* 805F851C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8520  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8524  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8528  41 82 00 08 */	beq lbl_805F8530
/* 805F852C  38 80 00 00 */	li r4, 0
lbl_805F8530:
/* 805F8530  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8534  41 82 00 14 */	beq lbl_805F8548
/* 805F8538  38 00 00 0A */	li r0, 0xa
/* 805F853C  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F8540  38 00 00 00 */	li r0, 0
/* 805F8544  B0 19 05 BC */	sth r0, 0x5bc(r25)
lbl_805F8548:
/* 805F8548  2C 1C 00 1C */	cmpwi r28, 0x1c
/* 805F854C  40 80 01 EC */	bge lbl_805F8738
/* 805F8550  4B B6 6E 49 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 805F8554  2C 03 00 00 */	cmpwi r3, 0
/* 805F8558  41 82 01 E0 */	beq lbl_805F8738
/* 805F855C  38 00 00 6B */	li r0, 0x6b
/* 805F8560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F8564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F8568  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 805F856C  38 00 00 00 */	li r0, 0
/* 805F8570  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 805F8574  38 00 00 01 */	li r0, 1
/* 805F8578  98 19 27 40 */	stb r0, 0x2740(r25)
/* 805F857C  4B A8 EE 59 */	bl cc_pl_cut_bit_get__Fv
/* 805F8580  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F8584  28 00 01 00 */	cmplwi r0, 0x100
/* 805F8588  40 82 01 B0 */	bne lbl_805F8738
/* 805F858C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 805F8590  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F8594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8598  40 80 01 A0 */	bge lbl_805F8738
/* 805F859C  38 00 00 13 */	li r0, 0x13
/* 805F85A0  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F85A4  38 00 00 00 */	li r0, 0
/* 805F85A8  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F85AC  48 00 01 8C */	b lbl_805F8738
lbl_805F85B0:
/* 805F85B0  7F 23 CB 78 */	mr r3, r25
/* 805F85B4  38 80 00 19 */	li r4, 0x19
/* 805F85B8  FC 20 F0 90 */	fmr f1, f30
/* 805F85BC  38 A0 00 00 */	li r5, 0
/* 805F85C0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F85C4  4B FF C4 D1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F85C8  38 00 00 10 */	li r0, 0x10
/* 805F85CC  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F85D0  38 00 00 0A */	li r0, 0xa
/* 805F85D4  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F85D8  38 00 00 0B */	li r0, 0xb
/* 805F85DC  B0 19 0C 44 */	sth r0, 0xc44(r25)
/* 805F85E0  48 00 01 58 */	b lbl_805F8738
lbl_805F85E4:
/* 805F85E4  38 00 00 0A */	li r0, 0xa
/* 805F85E8  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F85EC  3B 40 00 00 */	li r26, 0
/* 805F85F0  3B 60 08 00 */	li r27, 0x800
/* 805F85F4  2C 1C 00 05 */	cmpwi r28, 5
/* 805F85F8  41 80 00 18 */	blt lbl_805F8610
/* 805F85FC  C3 FE 01 24 */	lfs f31, 0x124(r30)
/* 805F8600  C3 DE 00 98 */	lfs f30, 0x98(r30)
/* 805F8604  40 82 00 0C */	bne lbl_805F8610
/* 805F8608  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 805F860C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
lbl_805F8610:
/* 805F8610  A8 19 0C 44 */	lha r0, 0xc44(r25)
/* 805F8614  2C 00 00 00 */	cmpwi r0, 0
/* 805F8618  40 82 01 20 */	bne lbl_805F8738
/* 805F861C  7F 23 CB 78 */	mr r3, r25
/* 805F8620  38 80 00 1A */	li r4, 0x1a
/* 805F8624  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F8628  38 A0 00 00 */	li r5, 0
/* 805F862C  FC 40 08 90 */	fmr f2, f1
/* 805F8630  4B FF C4 65 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8634  38 00 00 11 */	li r0, 0x11
/* 805F8638  B0 19 05 BC */	sth r0, 0x5bc(r25)
lbl_805F863C:
/* 805F863C  3B 40 00 00 */	li r26, 0
/* 805F8640  38 00 00 0A */	li r0, 0xa
/* 805F8644  B0 19 0C 58 */	sth r0, 0xc58(r25)
/* 805F8648  C3 DE 00 A4 */	lfs f30, 0xa4(r30)
/* 805F864C  3B 60 08 00 */	li r27, 0x800
/* 805F8650  2C 1C 00 02 */	cmpwi r28, 2
/* 805F8654  41 80 00 1C */	blt lbl_805F8670
/* 805F8658  2C 1C 00 0C */	cmpwi r28, 0xc
/* 805F865C  41 81 00 14 */	bgt lbl_805F8670
/* 805F8660  38 00 00 02 */	li r0, 2
/* 805F8664  98 19 0C 78 */	stb r0, 0xc78(r25)
/* 805F8668  38 00 00 01 */	li r0, 1
/* 805F866C  98 19 0C 77 */	stb r0, 0xc77(r25)
lbl_805F8670:
/* 805F8670  2C 1C 00 05 */	cmpwi r28, 5
/* 805F8674  41 80 00 0C */	blt lbl_805F8680
/* 805F8678  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F867C  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F8680:
/* 805F8680  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F8684  38 80 00 01 */	li r4, 1
/* 805F8688  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F868C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8690  40 82 00 18 */	bne lbl_805F86A8
/* 805F8694  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8698  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F869C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F86A0  41 82 00 08 */	beq lbl_805F86A8
/* 805F86A4  38 80 00 00 */	li r4, 0
lbl_805F86A8:
/* 805F86A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F86AC  41 82 00 8C */	beq lbl_805F8738
/* 805F86B0  7F 23 CB 78 */	mr r3, r25
/* 805F86B4  38 80 00 1D */	li r4, 0x1d
/* 805F86B8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F86BC  38 A0 00 00 */	li r5, 0
/* 805F86C0  FC 40 08 90 */	fmr f2, f1
/* 805F86C4  4B FF C3 D1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F86C8  38 00 00 12 */	li r0, 0x12
/* 805F86CC  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F86D0  48 00 00 68 */	b lbl_805F8738
lbl_805F86D4:
/* 805F86D4  C3 DE 00 A4 */	lfs f30, 0xa4(r30)
/* 805F86D8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805F86DC  41 80 00 1C */	blt lbl_805F86F8
/* 805F86E0  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805F86E4  41 81 00 14 */	bgt lbl_805F86F8
/* 805F86E8  38 00 00 01 */	li r0, 1
/* 805F86EC  98 19 0C 77 */	stb r0, 0xc77(r25)
/* 805F86F0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F86F4  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F86F8:
/* 805F86F8  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F86FC  38 80 00 01 */	li r4, 1
/* 805F8700  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8704  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8708  40 82 00 18 */	bne lbl_805F8720
/* 805F870C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8710  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8714  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8718  41 82 00 08 */	beq lbl_805F8720
/* 805F871C  38 80 00 00 */	li r4, 0
lbl_805F8720:
/* 805F8720  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8724  41 82 00 14 */	beq lbl_805F8738
/* 805F8728  38 00 00 0A */	li r0, 0xa
/* 805F872C  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F8730  38 00 00 00 */	li r0, 0
/* 805F8734  B0 19 05 BC */	sth r0, 0x5bc(r25)
lbl_805F8738:
/* 805F8738  38 79 05 2C */	addi r3, r25, 0x52c
/* 805F873C  FC 20 F8 90 */	fmr f1, f31
/* 805F8740  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8744  FC 60 F0 90 */	fmr f3, f30
/* 805F8748  4B C7 72 F5 */	bl cLib_addCalc2__FPffff
/* 805F874C  38 79 04 DE */	addi r3, r25, 0x4de
/* 805F8750  A8 99 0C 3C */	lha r4, 0xc3c(r25)
/* 805F8754  38 A0 00 04 */	li r5, 4
/* 805F8758  7F 66 DB 78 */	mr r6, r27
/* 805F875C  4B C7 7E AD */	bl cLib_addCalcAngleS2__FPssss
/* 805F8760  7F 43 D3 78 */	mr r3, r26
/* 805F8764  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805F8768  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805F876C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805F8770  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805F8774  39 61 00 40 */	addi r11, r1, 0x40
/* 805F8778  4B D6 9A A1 */	bl _restgpr_25
/* 805F877C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805F8780  7C 08 03 A6 */	mtlr r0
/* 805F8784  38 21 00 60 */	addi r1, r1, 0x60
/* 805F8788  4E 80 00 20 */	blr 
