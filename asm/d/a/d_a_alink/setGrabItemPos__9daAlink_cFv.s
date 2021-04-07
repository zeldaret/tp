lbl_800E3F50:
/* 800E3F50  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 800E3F54  7C 08 02 A6 */	mflr r0
/* 800E3F58  90 01 01 94 */	stw r0, 0x194(r1)
/* 800E3F5C  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 800E3F60  F3 E1 01 88 */	psq_st f31, 392(r1), 0, 0 /* qr0 */
/* 800E3F64  39 61 01 80 */	addi r11, r1, 0x180
/* 800E3F68  48 27 E2 65 */	bl _savegpr_25
/* 800E3F6C  7C 7F 1B 78 */	mr r31, r3
/* 800E3F70  3C 60 80 42 */	lis r3, lit_4409@ha /* 0x80425508@ha */
/* 800E3F74  3B 83 55 08 */	addi r28, r3, lit_4409@l /* 0x80425508@l */
/* 800E3F78  88 0D 8A 38 */	lbz r0, struct_80450FB8+0x0(r13)
/* 800E3F7C  7C 00 07 75 */	extsb. r0, r0
/* 800E3F80  40 82 00 38 */	bne lbl_800E3FB8
/* 800E3F84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3F88  D0 1C 01 44 */	stfs f0, 0x144(r28)
/* 800E3F8C  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800E3F90  38 7C 01 44 */	addi r3, r28, 0x144
/* 800E3F94  D0 03 00 04 */	stfs f0, 4(r3)
/* 800E3F98  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800E3F9C  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E3FA0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800E3FA4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800E3FA8  38 BC 01 38 */	addi r5, r28, 0x138
/* 800E3FAC  48 27 DC 79 */	bl __register_global_object
/* 800E3FB0  38 00 00 01 */	li r0, 1
/* 800E3FB4  98 0D 8A 38 */	stb r0, struct_80450FB8+0x0(r13)
lbl_800E3FB8:
/* 800E3FB8  88 0D 8A 39 */	lbz r0, struct_80450FB8+0x1(r13)
/* 800E3FBC  7C 00 07 75 */	extsb. r0, r0
/* 800E3FC0  40 82 00 38 */	bne lbl_800E3FF8
/* 800E3FC4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3FC8  D0 1C 01 5C */	stfs f0, 0x15c(r28)
/* 800E3FCC  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800E3FD0  38 7C 01 5C */	addi r3, r28, 0x15c
/* 800E3FD4  D0 03 00 04 */	stfs f0, 4(r3)
/* 800E3FD8  C0 02 94 10 */	lfs f0, lit_14615(r2)
/* 800E3FDC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E3FE0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800E3FE4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800E3FE8  38 BC 01 50 */	addi r5, r28, 0x150
/* 800E3FEC  48 27 DC 39 */	bl __register_global_object
/* 800E3FF0  38 00 00 01 */	li r0, 1
/* 800E3FF4  98 0D 8A 39 */	stb r0, struct_80450FB8+0x1(r13)
lbl_800E3FF8:
/* 800E3FF8  88 0D 8A 3A */	lbz r0, struct_80450FB8+0x2(r13)
/* 800E3FFC  7C 00 07 75 */	extsb. r0, r0
/* 800E4000  40 82 00 38 */	bne lbl_800E4038
/* 800E4004  C0 02 94 14 */	lfs f0, lit_14616(r2)
/* 800E4008  D0 1C 01 74 */	stfs f0, 0x174(r28)
/* 800E400C  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800E4010  38 7C 01 74 */	addi r3, r28, 0x174
/* 800E4014  D0 03 00 04 */	stfs f0, 4(r3)
/* 800E4018  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800E401C  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E4020  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800E4024  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800E4028  38 BC 01 68 */	addi r5, r28, 0x168
/* 800E402C  48 27 DB F9 */	bl __register_global_object
/* 800E4030  38 00 00 01 */	li r0, 1
/* 800E4034  98 0D 8A 3A */	stb r0, struct_80450FB8+0x2(r13)
lbl_800E4038:
/* 800E4038  88 0D 8A 3B */	lbz r0, struct_80450FB8+0x3(r13)
/* 800E403C  7C 00 07 75 */	extsb. r0, r0
/* 800E4040  40 82 00 38 */	bne lbl_800E4078
/* 800E4044  C0 02 94 18 */	lfs f0, lit_14617(r2)
/* 800E4048  D0 1C 01 8C */	stfs f0, 0x18c(r28)
/* 800E404C  C0 02 93 28 */	lfs f0, lit_7451(r2)
/* 800E4050  38 7C 01 8C */	addi r3, r28, 0x18c
/* 800E4054  D0 03 00 04 */	stfs f0, 4(r3)
/* 800E4058  C0 02 94 1C */	lfs f0, lit_14618(r2)
/* 800E405C  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E4060  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800E4064  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800E4068  38 BC 01 80 */	addi r5, r28, 0x180
/* 800E406C  48 27 DB B9 */	bl __register_global_object
/* 800E4070  38 00 00 01 */	li r0, 1
/* 800E4074  98 0D 8A 3B */	stb r0, struct_80450FB8+0x3(r13)
lbl_800E4078:
/* 800E4078  83 DF 28 30 */	lwz r30, 0x2830(r31)
/* 800E407C  28 1E 00 00 */	cmplwi r30, 0
/* 800E4080  41 82 0A A8 */	beq lbl_800E4B28
/* 800E4084  88 7F 04 E2 */	lbz r3, 0x4e2(r31)
/* 800E4088  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 800E408C  88 1F 04 8D */	lbz r0, 0x48d(r31)
/* 800E4090  98 1E 04 8D */	stb r0, 0x48d(r30)
/* 800E4094  98 7E 04 E2 */	stb r3, 0x4e2(r30)
/* 800E4098  7F E3 FB 78 */	mr r3, r31
/* 800E409C  4B FF FC 59 */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E40A0  7C 7D 1B 79 */	or. r29, r3, r3
/* 800E40A4  41 82 00 24 */	beq lbl_800E40C8
/* 800E40A8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800E40AC  3C 63 00 01 */	addis r3, r3, 1
/* 800E40B0  38 03 80 00 */	addi r0, r3, -32768
/* 800E40B4  7C 1B 07 34 */	extsh r27, r0
/* 800E40B8  A8 1F 2F EE */	lha r0, 0x2fee(r31)
/* 800E40BC  7C 00 00 D0 */	neg r0, r0
/* 800E40C0  7C 1A 07 34 */	extsh r26, r0
/* 800E40C4  48 00 00 18 */	b lbl_800E40DC
lbl_800E40C8:
/* 800E40C8  AB 7F 04 E6 */	lha r27, 0x4e6(r31)
/* 800E40CC  A8 7F 2F EE */	lha r3, 0x2fee(r31)
/* 800E40D0  A8 1F 30 82 */	lha r0, 0x3082(r31)
/* 800E40D4  7C 03 02 14 */	add r0, r3, r0
/* 800E40D8  7C 1A 07 34 */	extsh r26, r0
lbl_800E40DC:
/* 800E40DC  38 60 00 00 */	li r3, 0
/* 800E40E0  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E40E4  28 00 00 51 */	cmplwi r0, 0x51
/* 800E40E8  41 82 00 10 */	beq lbl_800E40F8
/* 800E40EC  A0 1F 1F 94 */	lhz r0, 0x1f94(r31)
/* 800E40F0  28 00 00 51 */	cmplwi r0, 0x51
/* 800E40F4  40 82 00 08 */	bne lbl_800E40FC
lbl_800E40F8:
/* 800E40F8  38 60 00 01 */	li r3, 1
lbl_800E40FC:
/* 800E40FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4100  41 82 00 3C */	beq lbl_800E413C
/* 800E4104  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800E4108  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800E410C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800E4110  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 800E4114  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4118  C0 03 01 FC */	lfs f0, 0x1fc(r3)
/* 800E411C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E4120  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 800E4124  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E4128  B3 7E 04 E6 */	sth r27, 0x4e6(r30)
/* 800E412C  B3 5E 04 E8 */	sth r26, 0x4e8(r30)
/* 800E4130  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800E4134  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800E4138  48 00 0A 7C */	b lbl_800E4BB4
lbl_800E413C:
/* 800E413C  A0 7F 2F E8 */	lhz r3, 0x2fe8(r31)
/* 800E4140  28 03 00 6C */	cmplwi r3, 0x6c
/* 800E4144  41 82 00 28 */	beq lbl_800E416C
/* 800E4148  28 03 00 6E */	cmplwi r3, 0x6e
/* 800E414C  41 82 00 20 */	beq lbl_800E416C
/* 800E4150  28 03 00 75 */	cmplwi r3, 0x75
/* 800E4154  41 82 00 18 */	beq lbl_800E416C
/* 800E4158  28 03 01 2B */	cmplwi r3, 0x12b
/* 800E415C  40 82 00 78 */	bne lbl_800E41D4
/* 800E4160  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E4164  2C 00 00 00 */	cmpwi r0, 0
/* 800E4168  40 82 00 6C */	bne lbl_800E41D4
lbl_800E416C:
/* 800E416C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800E4170  4B F2 8B F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800E4174  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4178  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E417C  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800E4180  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E4184  7C 04 00 50 */	subf r0, r4, r0
/* 800E4188  7C 04 07 34 */	extsh r4, r0
/* 800E418C  4B F2 82 A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 800E4190  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4194  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4198  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800E419C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800E41A0  48 26 2B CD */	bl PSMTXMultVec
/* 800E41A4  2C 1D 00 00 */	cmpwi r29, 0
/* 800E41A8  41 82 0A 0C */	beq lbl_800E4BB4
/* 800E41AC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E41B0  28 00 00 6C */	cmplwi r0, 0x6c
/* 800E41B4  40 82 0A 00 */	bne lbl_800E4BB4
/* 800E41B8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800E41BC  7F 64 DB 78 */	mr r4, r27
/* 800E41C0  38 A0 10 00 */	li r5, 0x1000
/* 800E41C4  48 18 C9 CD */	bl cLib_chaseAngleS__FPsss
/* 800E41C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E41CC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E41D0  48 00 09 E4 */	b lbl_800E4BB4
lbl_800E41D4:
/* 800E41D4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E41D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E41DC  41 82 00 C4 */	beq lbl_800E42A0
/* 800E41E0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800E41E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800E41E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800E41EC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800E41F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E41F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E41F8  48 26 22 B9 */	bl PSMTXCopy
/* 800E41FC  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 800E4200  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800E4204  40 82 00 28 */	bne lbl_800E422C
/* 800E4208  C0 22 94 20 */	lfs f1, lit_14619(r2)
/* 800E420C  C0 42 94 24 */	lfs f2, lit_14620(r2)
/* 800E4210  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E4214  4B F2 8B 89 */	bl transM__14mDoMtx_stack_cFfff
/* 800E4218  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E421C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4220  38 80 62 22 */	li r4, 0x6222
/* 800E4224  4B F2 82 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 800E4228  48 00 00 4C */	b lbl_800E4274
lbl_800E422C:
/* 800E422C  A8 1E 00 08 */	lha r0, 8(r30)
/* 800E4230  2C 00 01 10 */	cmpwi r0, 0x110
/* 800E4234  40 82 00 18 */	bne lbl_800E424C
/* 800E4238  C0 22 94 28 */	lfs f1, lit_14621(r2)
/* 800E423C  C0 42 93 74 */	lfs f2, lit_8502(r2)
/* 800E4240  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E4244  4B F2 8B 59 */	bl transM__14mDoMtx_stack_cFfff
/* 800E4248  48 00 00 14 */	b lbl_800E425C
lbl_800E424C:
/* 800E424C  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800E4250  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 800E4254  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E4258  4B F2 8B 45 */	bl transM__14mDoMtx_stack_cFfff
lbl_800E425C:
/* 800E425C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4260  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4264  38 80 5D DD */	li r4, 0x5ddd
/* 800E4268  38 A0 C0 00 */	li r5, -16384
/* 800E426C  38 C0 00 00 */	li r6, 0
/* 800E4270  4B F2 7E F5 */	bl mDoMtx_XYZrotM__FPA4_fsss
lbl_800E4274:
/* 800E4274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E427C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800E4280  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4284  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E4288  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E428C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800E4290  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E4294  38 9E 04 E4 */	addi r4, r30, 0x4e4
/* 800E4298  4B F2 89 69 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800E429C  48 00 09 18 */	b lbl_800E4BB4
lbl_800E42A0:
/* 800E42A0  A8 1E 00 08 */	lha r0, 8(r30)
/* 800E42A4  20 00 01 09 */	subfic r0, r0, 0x109
/* 800E42A8  7C 00 00 34 */	cntlzw r0, r0
/* 800E42AC  54 19 DE 3E */	rlwinm r25, r0, 0x1b, 0x18, 0x1f
/* 800E42B0  28 03 00 6D */	cmplwi r3, 0x6d
/* 800E42B4  40 82 00 18 */	bne lbl_800E42CC
/* 800E42B8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800E42BC  7F 64 DB 78 */	mr r4, r27
/* 800E42C0  38 A0 10 00 */	li r5, 0x1000
/* 800E42C4  48 18 C8 CD */	bl cLib_chaseAngleS__FPsss
/* 800E42C8  48 00 00 14 */	b lbl_800E42DC
lbl_800E42CC:
/* 800E42CC  B3 7E 04 E6 */	sth r27, 0x4e6(r30)
/* 800E42D0  B3 5E 04 E8 */	sth r26, 0x4e8(r30)
/* 800E42D4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800E42D8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_800E42DC:
/* 800E42DC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E42E0  28 00 00 6D */	cmplwi r0, 0x6d
/* 800E42E4  40 82 00 1C */	bne lbl_800E4300
/* 800E42E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E42EC  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 800E42F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E42F4  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 800E42F8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800E42FC  D0 01 01 38 */	stfs f0, 0x138(r1)
lbl_800E4300:
/* 800E4300  2C 1D 00 00 */	cmpwi r29, 0
/* 800E4304  41 82 02 80 */	beq lbl_800E4584
/* 800E4308  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800E430C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E4310  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E4314  90 01 01 4C */	stw r0, 0x14c(r1)
/* 800E4318  3C 00 43 30 */	lis r0, 0x4330
/* 800E431C  90 01 01 48 */	stw r0, 0x148(r1)
/* 800E4320  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 800E4324  EC 40 08 28 */	fsubs f2, f0, f1
/* 800E4328  C0 3F 33 E8 */	lfs f1, 0x33e8(r31)
/* 800E432C  C0 02 94 2C */	lfs f0, lit_14622(r2)
/* 800E4330  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E4334  EC 02 00 2A */	fadds f0, f2, f0
/* 800E4338  FC 00 00 1E */	fctiwz f0, f0
/* 800E433C  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 800E4340  83 41 01 54 */	lwz r26, 0x154(r1)
/* 800E4344  C0 1F 2A CC */	lfs f0, 0x2acc(r31)
/* 800E4348  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 800E434C  C0 1F 2A DC */	lfs f0, 0x2adc(r31)
/* 800E4350  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 800E4354  C0 1F 2A EC */	lfs f0, 0x2aec(r31)
/* 800E4358  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800E435C  C0 1F 2B 70 */	lfs f0, 0x2b70(r31)
/* 800E4360  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 800E4364  C0 1F 2B 80 */	lfs f0, 0x2b80(r31)
/* 800E4368  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 800E436C  C0 1F 2B 90 */	lfs f0, 0x2b90(r31)
/* 800E4370  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 800E4374  38 61 00 E8 */	addi r3, r1, 0xe8
/* 800E4378  38 81 01 24 */	addi r4, r1, 0x124
/* 800E437C  38 A1 01 18 */	addi r5, r1, 0x118
/* 800E4380  48 18 27 65 */	bl __pl__4cXyzCFRC3Vec
/* 800E4384  38 61 00 DC */	addi r3, r1, 0xdc
/* 800E4388  38 81 00 E8 */	addi r4, r1, 0xe8
/* 800E438C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800E4390  48 18 27 F5 */	bl __ml__4cXyzCFf
/* 800E4394  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 800E4398  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E439C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 800E43A0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E43A4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 800E43A8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E43AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E43B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E43B4  7F 44 D3 78 */	mr r4, r26
/* 800E43B8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800E43BC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 800E43C0  4B F2 7E 49 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 800E43C4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E43C8  28 00 00 6D */	cmplwi r0, 0x6d
/* 800E43CC  41 82 00 0C */	beq lbl_800E43D8
/* 800E43D0  28 00 00 70 */	cmplwi r0, 0x70
/* 800E43D4  40 82 01 18 */	bne lbl_800E44EC
lbl_800E43D8:
/* 800E43D8  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800E43DC  C0 7F 34 78 */	lfs f3, 0x3478(r31)
/* 800E43E0  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 800E43E4  40 80 00 78 */	bge lbl_800E445C
/* 800E43E8  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800E43EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E43F0  EC 03 00 28 */	fsubs f0, f3, f0
/* 800E43F4  EF E1 00 24 */	fdivs f31, f1, f0
/* 800E43F8  38 61 00 D0 */	addi r3, r1, 0xd0
/* 800E43FC  38 9C 01 44 */	addi r4, r28, 0x144
/* 800E4400  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E4404  EC 20 F8 28 */	fsubs f1, f0, f31
/* 800E4408  48 18 27 7D */	bl __ml__4cXyzCFf
/* 800E440C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 800E4410  38 9C 01 5C */	addi r4, r28, 0x15c
/* 800E4414  FC 20 F8 90 */	fmr f1, f31
/* 800E4418  48 18 27 6D */	bl __ml__4cXyzCFf
/* 800E441C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 800E4420  38 81 00 D0 */	addi r4, r1, 0xd0
/* 800E4424  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 800E4428  48 18 26 BD */	bl __pl__4cXyzCFRC3Vec
/* 800E442C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800E4430  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E4434  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800E4438  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800E443C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 800E4440  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E4444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4448  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E444C  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4450  7C 85 23 78 */	mr r5, r4
/* 800E4454  48 26 29 19 */	bl PSMTXMultVec
/* 800E4458  48 00 00 F8 */	b lbl_800E4550
lbl_800E445C:
/* 800E445C  EC 41 18 28 */	fsubs f2, f1, f3
/* 800E4460  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800E4464  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E4468  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E446C  90 01 01 54 */	stw r0, 0x154(r1)
/* 800E4470  3C 00 43 30 */	lis r0, 0x4330
/* 800E4474  90 01 01 50 */	stw r0, 0x150(r1)
/* 800E4478  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 800E447C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E4480  EC 00 18 28 */	fsubs f0, f0, f3
/* 800E4484  EF E2 00 24 */	fdivs f31, f2, f0
/* 800E4488  38 61 00 AC */	addi r3, r1, 0xac
/* 800E448C  38 9C 01 5C */	addi r4, r28, 0x15c
/* 800E4490  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E4494  EC 20 F8 28 */	fsubs f1, f0, f31
/* 800E4498  48 18 26 ED */	bl __ml__4cXyzCFf
/* 800E449C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 800E44A0  38 9C 01 74 */	addi r4, r28, 0x174
/* 800E44A4  FC 20 F8 90 */	fmr f1, f31
/* 800E44A8  48 18 26 DD */	bl __ml__4cXyzCFf
/* 800E44AC  38 61 00 94 */	addi r3, r1, 0x94
/* 800E44B0  38 81 00 AC */	addi r4, r1, 0xac
/* 800E44B4  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 800E44B8  48 18 26 2D */	bl __pl__4cXyzCFRC3Vec
/* 800E44BC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800E44C0  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E44C4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 800E44C8  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800E44CC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 800E44D0  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E44D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E44D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E44DC  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E44E0  7C 85 23 78 */	mr r5, r4
/* 800E44E4  48 26 28 89 */	bl PSMTXMultVec
/* 800E44E8  48 00 00 68 */	b lbl_800E4550
lbl_800E44EC:
/* 800E44EC  38 61 00 88 */	addi r3, r1, 0x88
/* 800E44F0  38 9C 01 74 */	addi r4, r28, 0x174
/* 800E44F4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E44F8  C0 1F 33 E8 */	lfs f0, 0x33e8(r31)
/* 800E44FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E4500  48 18 26 85 */	bl __ml__4cXyzCFf
/* 800E4504  38 61 00 7C */	addi r3, r1, 0x7c
/* 800E4508  38 9C 01 8C */	addi r4, r28, 0x18c
/* 800E450C  C0 3F 33 E8 */	lfs f1, 0x33e8(r31)
/* 800E4510  48 18 26 75 */	bl __ml__4cXyzCFf
/* 800E4514  38 61 00 70 */	addi r3, r1, 0x70
/* 800E4518  38 81 00 88 */	addi r4, r1, 0x88
/* 800E451C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800E4520  48 18 25 C5 */	bl __pl__4cXyzCFRC3Vec
/* 800E4524  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800E4528  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E452C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800E4530  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800E4534  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800E4538  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E453C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4544  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4548  7C 85 23 78 */	mr r5, r4
/* 800E454C  48 26 28 21 */	bl PSMTXMultVec
lbl_800E4550:
/* 800E4550  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E4554  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4558  7C 65 1B 78 */	mr r5, r3
/* 800E455C  48 26 2B 35 */	bl PSVECAdd
/* 800E4560  7C 1A 00 D0 */	neg r0, r26
/* 800E4564  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800E4568  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 800E456C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 800E4570  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E4574  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E4578  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 800E457C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 800E4580  48 00 01 20 */	b lbl_800E46A0
lbl_800E4584:
/* 800E4584  38 61 00 64 */	addi r3, r1, 0x64
/* 800E4588  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 800E458C  38 BF 05 D4 */	addi r5, r31, 0x5d4
/* 800E4590  48 18 25 55 */	bl __pl__4cXyzCFRC3Vec
/* 800E4594  38 61 00 58 */	addi r3, r1, 0x58
/* 800E4598  38 81 00 64 */	addi r4, r1, 0x64
/* 800E459C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800E45A0  48 18 25 E5 */	bl __ml__4cXyzCFf
/* 800E45A4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800E45A8  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E45AC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800E45B0  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800E45B4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800E45B8  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E45BC  38 61 01 3C */	addi r3, r1, 0x13c
/* 800E45C0  4B F2 87 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800E45C4  7F E3 FB 78 */	mr r3, r31
/* 800E45C8  4B FF DE 35 */	bl concatMagneBootMtx__9daAlink_cFv
/* 800E45CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E45D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E45D4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800E45D8  7F 65 DB 78 */	mr r5, r27
/* 800E45DC  7F 46 D3 78 */	mr r6, r26
/* 800E45E0  4B F2 7C C1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800E45E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E45E8  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E45EC  C0 22 94 14 */	lfs f1, lit_14616(r2)
/* 800E45F0  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 800E45F4  C0 02 94 30 */	lfs f0, lit_14623(r2)
/* 800E45F8  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E45FC  2C 19 00 00 */	cmpwi r25, 0
/* 800E4600  41 82 00 10 */	beq lbl_800E4610
/* 800E4604  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800E4608  EC 01 00 2A */	fadds f0, f1, f0
/* 800E460C  D0 01 01 40 */	stfs f0, 0x140(r1)
lbl_800E4610:
/* 800E4610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4618  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E461C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800E4620  48 26 27 4D */	bl PSMTXMultVec
/* 800E4624  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E4628  28 00 00 50 */	cmplwi r0, 0x50
/* 800E462C  40 82 00 74 */	bne lbl_800E46A0
/* 800E4630  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800E4634  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800E4638  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800E463C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 800E4640  3C 80 80 39 */	lis r4, localSidePos@ha /* 0x803918DC@ha */
/* 800E4644  38 84 18 DC */	addi r4, r4, localSidePos@l /* 0x803918DC@l */
/* 800E4648  38 A1 01 3C */	addi r5, r1, 0x13c
/* 800E464C  48 26 27 21 */	bl PSMTXMultVec
/* 800E4650  38 61 00 4C */	addi r3, r1, 0x4c
/* 800E4654  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800E4658  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E465C  C0 1F 33 E8 */	lfs f0, 0x33e8(r31)
/* 800E4660  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E4664  48 18 25 21 */	bl __ml__4cXyzCFf
/* 800E4668  38 61 00 40 */	addi r3, r1, 0x40
/* 800E466C  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4670  C0 3F 33 E8 */	lfs f1, 0x33e8(r31)
/* 800E4674  48 18 25 11 */	bl __ml__4cXyzCFf
/* 800E4678  38 61 00 34 */	addi r3, r1, 0x34
/* 800E467C  38 81 00 4C */	addi r4, r1, 0x4c
/* 800E4680  38 A1 00 40 */	addi r5, r1, 0x40
/* 800E4684  48 18 24 61 */	bl __pl__4cXyzCFRC3Vec
/* 800E4688  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800E468C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4690  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800E4694  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E4698  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800E469C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_800E46A0:
/* 800E46A0  7F E3 FB 78 */	mr r3, r31
/* 800E46A4  38 80 00 B0 */	li r4, 0xb0
/* 800E46A8  4B FC 7E B1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800E46AC  2C 03 00 00 */	cmpwi r3, 0
/* 800E46B0  41 82 00 D0 */	beq lbl_800E4780
/* 800E46B4  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800E46B8  A8 9F 1F D6 */	lha r4, 0x1fd6(r31)
/* 800E46BC  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800E46C0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800E46C4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800E46C8  90 01 01 54 */	stw r0, 0x154(r1)
/* 800E46CC  3C 60 43 30 */	lis r3, 0x4330
/* 800E46D0  90 61 01 50 */	stw r3, 0x150(r1)
/* 800E46D4  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 800E46D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E46DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E46E0  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800E46E4  7C 04 00 50 */	subf r0, r4, r0
/* 800E46E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E46EC  90 01 01 4C */	stw r0, 0x14c(r1)
/* 800E46F0  90 61 01 48 */	stw r3, 0x148(r1)
/* 800E46F4  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 800E46F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E46FC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E4700  EC 23 00 28 */	fsubs f1, f3, f0
/* 800E4704  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E4708  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 800E470C  C0 1F 33 E4 */	lfs f0, 0x33e4(r31)
/* 800E4710  EC 00 00 72 */	fmuls f0, f0, f1
/* 800E4714  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800E4718  2C 19 00 00 */	cmpwi r25, 0
/* 800E471C  41 82 00 0C */	beq lbl_800E4728
/* 800E4720  C0 42 94 38 */	lfs f2, lit_14625(r2)
/* 800E4724  48 00 00 08 */	b lbl_800E472C
lbl_800E4728:
/* 800E4728  C0 42 94 14 */	lfs f2, lit_14616(r2)
lbl_800E472C:
/* 800E472C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E4730  28 00 00 70 */	cmplwi r0, 0x70
/* 800E4734  40 82 00 18 */	bne lbl_800E474C
/* 800E4738  C0 02 94 3C */	lfs f0, lit_14626(r2)
/* 800E473C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E4740  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E4744  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800E4748  48 00 00 14 */	b lbl_800E475C
lbl_800E474C:
/* 800E474C  C0 02 94 40 */	lfs f0, lit_14627(r2)
/* 800E4750  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E4754  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E4758  D0 01 01 40 */	stfs f0, 0x140(r1)
lbl_800E475C:
/* 800E475C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4764  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4768  7C 85 23 78 */	mr r5, r4
/* 800E476C  48 26 26 E1 */	bl PSMTXMultVecSR
/* 800E4770  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E4774  38 81 01 3C */	addi r4, r1, 0x13c
/* 800E4778  7C 65 1B 78 */	mr r5, r3
/* 800E477C  48 26 29 15 */	bl PSVECAdd
lbl_800E4780:
/* 800E4780  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E4784  28 00 00 70 */	cmplwi r0, 0x70
/* 800E4788  40 82 03 58 */	bne lbl_800E4AE0
/* 800E478C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E4790  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E4794  41 82 02 E8 */	beq lbl_800E4A7C
/* 800E4798  38 61 00 28 */	addi r3, r1, 0x28
/* 800E479C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800E47A0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800E47A4  48 18 23 91 */	bl __mi__4cXyzCFRC3Vec
/* 800E47A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E47AC  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 800E47B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E47B4  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 800E47B8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E47BC  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 800E47C0  38 7F 2C 78 */	addi r3, r31, 0x2c78
/* 800E47C4  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E47C8  7C 85 23 78 */	mr r5, r4
/* 800E47CC  48 26 26 81 */	bl PSMTXMultVecSR
/* 800E47D0  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800E47D4  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 800E47D8  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800E47DC  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E47E0  7C 85 23 78 */	mr r5, r4
/* 800E47E4  48 26 26 69 */	bl PSMTXMultVecSR
/* 800E47E8  38 61 01 0C */	addi r3, r1, 0x10c
/* 800E47EC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800E47F0  7C 65 1B 78 */	mr r5, r3
/* 800E47F4  48 26 28 9D */	bl PSVECAdd
/* 800E47F8  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800E47FC  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800E4800  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800E4804  38 A1 01 00 */	addi r5, r1, 0x100
/* 800E4808  48 26 26 45 */	bl PSMTXMultVecSR
/* 800E480C  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E4810  38 81 01 00 */	addi r4, r1, 0x100
/* 800E4814  C0 3F 05 98 */	lfs f1, 0x598(r31)
/* 800E4818  48 18 23 6D */	bl __ml__4cXyzCFf
/* 800E481C  38 61 00 10 */	addi r3, r1, 0x10
/* 800E4820  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E4824  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800E4828  48 18 23 0D */	bl __mi__4cXyzCFRC3Vec
/* 800E482C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E4830  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 800E4834  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E4838  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800E483C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E4840  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 800E4844  7F E3 FB 78 */	mr r3, r31
/* 800E4848  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E484C  38 A1 01 00 */	addi r5, r1, 0x100
/* 800E4850  48 00 13 1D */	bl grabLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800E4854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4858  41 82 02 88 */	beq lbl_800E4AE0
/* 800E485C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E4860  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E4864  48 26 2B 39 */	bl PSVECSquareDistance
/* 800E4868  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E486C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4870  40 81 00 58 */	ble lbl_800E48C8
/* 800E4874  FC 00 08 34 */	frsqrte f0, f1
/* 800E4878  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E487C  FC 44 00 32 */	fmul f2, f4, f0
/* 800E4880  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E4884  FC 00 00 32 */	fmul f0, f0, f0
/* 800E4888  FC 01 00 32 */	fmul f0, f1, f0
/* 800E488C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E4890  FC 02 00 32 */	fmul f0, f2, f0
/* 800E4894  FC 44 00 32 */	fmul f2, f4, f0
/* 800E4898  FC 00 00 32 */	fmul f0, f0, f0
/* 800E489C  FC 01 00 32 */	fmul f0, f1, f0
/* 800E48A0  FC 03 00 28 */	fsub f0, f3, f0
/* 800E48A4  FC 02 00 32 */	fmul f0, f2, f0
/* 800E48A8  FC 44 00 32 */	fmul f2, f4, f0
/* 800E48AC  FC 00 00 32 */	fmul f0, f0, f0
/* 800E48B0  FC 01 00 32 */	fmul f0, f1, f0
/* 800E48B4  FC 03 00 28 */	fsub f0, f3, f0
/* 800E48B8  FC 02 00 32 */	fmul f0, f2, f0
/* 800E48BC  FF E1 00 32 */	fmul f31, f1, f0
/* 800E48C0  FF E0 F8 18 */	frsp f31, f31
/* 800E48C4  48 00 00 90 */	b lbl_800E4954
lbl_800E48C8:
/* 800E48C8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E48CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E48D0  40 80 00 10 */	bge lbl_800E48E0
/* 800E48D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E48D8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E48DC  48 00 00 78 */	b lbl_800E4954
lbl_800E48E0:
/* 800E48E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E48E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800E48E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E48EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E48F0  7C 03 00 00 */	cmpw r3, r0
/* 800E48F4  41 82 00 14 */	beq lbl_800E4908
/* 800E48F8  40 80 00 40 */	bge lbl_800E4938
/* 800E48FC  2C 03 00 00 */	cmpwi r3, 0
/* 800E4900  41 82 00 20 */	beq lbl_800E4920
/* 800E4904  48 00 00 34 */	b lbl_800E4938
lbl_800E4908:
/* 800E4908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E490C  41 82 00 0C */	beq lbl_800E4918
/* 800E4910  38 00 00 01 */	li r0, 1
/* 800E4914  48 00 00 28 */	b lbl_800E493C
lbl_800E4918:
/* 800E4918  38 00 00 02 */	li r0, 2
/* 800E491C  48 00 00 20 */	b lbl_800E493C
lbl_800E4920:
/* 800E4920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E4924  41 82 00 0C */	beq lbl_800E4930
/* 800E4928  38 00 00 05 */	li r0, 5
/* 800E492C  48 00 00 10 */	b lbl_800E493C
lbl_800E4930:
/* 800E4930  38 00 00 03 */	li r0, 3
/* 800E4934  48 00 00 08 */	b lbl_800E493C
lbl_800E4938:
/* 800E4938  38 00 00 04 */	li r0, 4
lbl_800E493C:
/* 800E493C  2C 00 00 01 */	cmpwi r0, 1
/* 800E4940  40 82 00 10 */	bne lbl_800E4950
/* 800E4944  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E4948  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E494C  48 00 00 08 */	b lbl_800E4954
lbl_800E4950:
/* 800E4950  FF E0 08 90 */	fmr f31, f1
lbl_800E4954:
/* 800E4954  3B 3F 1E 8C */	addi r25, r31, 0x1e8c
/* 800E4958  7F 23 CB 78 */	mr r3, r25
/* 800E495C  38 81 01 0C */	addi r4, r1, 0x10c
/* 800E4960  48 26 2A 3D */	bl PSVECSquareDistance
/* 800E4964  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E4968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E496C  40 81 00 58 */	ble lbl_800E49C4
/* 800E4970  FC 00 08 34 */	frsqrte f0, f1
/* 800E4974  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E4978  FC 44 00 32 */	fmul f2, f4, f0
/* 800E497C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E4980  FC 00 00 32 */	fmul f0, f0, f0
/* 800E4984  FC 01 00 32 */	fmul f0, f1, f0
/* 800E4988  FC 03 00 28 */	fsub f0, f3, f0
/* 800E498C  FC 02 00 32 */	fmul f0, f2, f0
/* 800E4990  FC 44 00 32 */	fmul f2, f4, f0
/* 800E4994  FC 00 00 32 */	fmul f0, f0, f0
/* 800E4998  FC 01 00 32 */	fmul f0, f1, f0
/* 800E499C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E49A0  FC 02 00 32 */	fmul f0, f2, f0
/* 800E49A4  FC 44 00 32 */	fmul f2, f4, f0
/* 800E49A8  FC 00 00 32 */	fmul f0, f0, f0
/* 800E49AC  FC 01 00 32 */	fmul f0, f1, f0
/* 800E49B0  FC 03 00 28 */	fsub f0, f3, f0
/* 800E49B4  FC 02 00 32 */	fmul f0, f2, f0
/* 800E49B8  FC 21 00 32 */	fmul f1, f1, f0
/* 800E49BC  FC 20 08 18 */	frsp f1, f1
/* 800E49C0  48 00 00 88 */	b lbl_800E4A48
lbl_800E49C4:
/* 800E49C4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E49C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E49CC  40 80 00 10 */	bge lbl_800E49DC
/* 800E49D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E49D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E49D8  48 00 00 70 */	b lbl_800E4A48
lbl_800E49DC:
/* 800E49DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E49E0  80 81 00 08 */	lwz r4, 8(r1)
/* 800E49E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E49E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E49EC  7C 03 00 00 */	cmpw r3, r0
/* 800E49F0  41 82 00 14 */	beq lbl_800E4A04
/* 800E49F4  40 80 00 40 */	bge lbl_800E4A34
/* 800E49F8  2C 03 00 00 */	cmpwi r3, 0
/* 800E49FC  41 82 00 20 */	beq lbl_800E4A1C
/* 800E4A00  48 00 00 34 */	b lbl_800E4A34
lbl_800E4A04:
/* 800E4A04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E4A08  41 82 00 0C */	beq lbl_800E4A14
/* 800E4A0C  38 00 00 01 */	li r0, 1
/* 800E4A10  48 00 00 28 */	b lbl_800E4A38
lbl_800E4A14:
/* 800E4A14  38 00 00 02 */	li r0, 2
/* 800E4A18  48 00 00 20 */	b lbl_800E4A38
lbl_800E4A1C:
/* 800E4A1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E4A20  41 82 00 0C */	beq lbl_800E4A2C
/* 800E4A24  38 00 00 05 */	li r0, 5
/* 800E4A28  48 00 00 10 */	b lbl_800E4A38
lbl_800E4A2C:
/* 800E4A2C  38 00 00 03 */	li r0, 3
/* 800E4A30  48 00 00 08 */	b lbl_800E4A38
lbl_800E4A34:
/* 800E4A34  38 00 00 04 */	li r0, 4
lbl_800E4A38:
/* 800E4A38  2C 00 00 01 */	cmpwi r0, 1
/* 800E4A3C  40 82 00 0C */	bne lbl_800E4A48
/* 800E4A40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E4A44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E4A48:
/* 800E4A48  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800E4A4C  40 81 00 94 */	ble lbl_800E4AE0
/* 800E4A50  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E4A54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 800E4A58  C0 19 00 00 */	lfs f0, 0(r25)
/* 800E4A5C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4A60  C0 19 00 04 */	lfs f0, 4(r25)
/* 800E4A64  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E4A68  C0 19 00 08 */	lfs f0, 8(r25)
/* 800E4A6C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E4A70  7F E3 FB 78 */	mr r3, r31
/* 800E4A74  48 00 01 61 */	bl freeGrabItem__9daAlink_cFv
/* 800E4A78  48 00 01 3C */	b lbl_800E4BB4
lbl_800E4A7C:
/* 800E4A7C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800E4A80  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800E4A84  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800E4A88  EC 21 00 2A */	fadds f1, f1, f0
/* 800E4A8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E4A90  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 800E4A94  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 800E4A98  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 800E4A9C  38 7F 1E CC */	addi r3, r31, 0x1ecc
/* 800E4AA0  38 81 00 F4 */	addi r4, r1, 0xf4
/* 800E4AA4  48 18 32 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800E4AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E4AAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E4AB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E4AB4  38 9F 1E CC */	addi r4, r31, 0x1ecc
/* 800E4AB8  4B F8 F9 E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800E4ABC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E4AC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4AC4  40 81 00 1C */	ble lbl_800E4AE0
/* 800E4AC8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E4ACC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 800E4AD0  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 800E4AD4  7F E3 FB 78 */	mr r3, r31
/* 800E4AD8  48 00 00 FD */	bl freeGrabItem__9daAlink_cFv
/* 800E4ADC  48 00 00 D8 */	b lbl_800E4BB4
lbl_800E4AE0:
/* 800E4AE0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E4AE4  28 00 00 6D */	cmplwi r0, 0x6d
/* 800E4AE8  40 82 00 CC */	bne lbl_800E4BB4
/* 800E4AEC  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800E4AF0  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800E4AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4AF8  40 80 00 BC */	bge lbl_800E4BB4
/* 800E4AFC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800E4B00  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 800E4B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4B08  40 80 00 AC */	bge lbl_800E4BB4
/* 800E4B0C  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 800E4B10  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4B14  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 800E4B18  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E4B1C  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 800E4B20  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E4B24  48 00 00 90 */	b lbl_800E4BB4
lbl_800E4B28:
/* 800E4B28  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E4B2C  28 00 01 02 */	cmplwi r0, 0x102
/* 800E4B30  40 82 00 84 */	bne lbl_800E4BB4
/* 800E4B34  83 3F 28 28 */	lwz r25, 0x2828(r31)
/* 800E4B38  28 19 00 00 */	cmplwi r25, 0
/* 800E4B3C  41 82 00 78 */	beq lbl_800E4BB4
/* 800E4B40  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800E4B44  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800E4B48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800E4B4C  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800E4B50  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800E4B54  7C 63 02 14 */	add r3, r3, r0
/* 800E4B58  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4B5C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4B60  48 26 19 51 */	bl PSMTXCopy
/* 800E4B64  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800E4B68  C0 42 93 6C */	lfs f2, lit_8473(r2)
/* 800E4B6C  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800E4B70  4B F2 82 2D */	bl transM__14mDoMtx_stack_cFfff
/* 800E4B74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4B78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4B7C  38 80 32 7D */	li r4, 0x327d
/* 800E4B80  38 A0 FB 4F */	li r5, -1201
/* 800E4B84  38 C0 02 46 */	li r6, 0x246
/* 800E4B88  4B F2 75 DD */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800E4B8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E4B90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E4B94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800E4B98  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 800E4B9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E4BA0  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 800E4BA4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800E4BA8  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 800E4BAC  38 99 04 E4 */	addi r4, r25, 0x4e4
/* 800E4BB0  4B F2 80 51 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
lbl_800E4BB4:
/* 800E4BB4  E3 E1 01 88 */	psq_l f31, 392(r1), 0, 0 /* qr0 */
/* 800E4BB8  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 800E4BBC  39 61 01 80 */	addi r11, r1, 0x180
/* 800E4BC0  48 27 D6 59 */	bl _restgpr_25
/* 800E4BC4  80 01 01 94 */	lwz r0, 0x194(r1)
/* 800E4BC8  7C 08 03 A6 */	mtlr r0
/* 800E4BCC  38 21 01 90 */	addi r1, r1, 0x190
/* 800E4BD0  4E 80 00 20 */	blr 
