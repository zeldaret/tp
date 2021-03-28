lbl_800C30F0:
/* 800C30F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C30F4  7C 08 02 A6 */	mflr r0
/* 800C30F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C30FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3100  93 C1 00 08 */	stw r30, 8(r1)
/* 800C3104  7C 7E 1B 78 */	mr r30, r3
/* 800C3108  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C310C  38 80 00 00 */	li r4, 0
/* 800C3110  4B FF 6F C1 */	bl checkNextAction__9daAlink_cFi
/* 800C3114  2C 03 00 00 */	cmpwi r3, 0
/* 800C3118  40 82 00 58 */	bne lbl_800C3170
/* 800C311C  7F C3 F3 78 */	mr r3, r30
/* 800C3120  4B FF 39 11 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C3124  2C 03 00 00 */	cmpwi r3, 0
/* 800C3128  40 82 00 48 */	bne lbl_800C3170
/* 800C312C  7F C3 F3 78 */	mr r3, r30
/* 800C3130  48 05 2A F1 */	bl checkEventRun__9daAlink_cCFv
/* 800C3134  2C 03 00 00 */	cmpwi r3, 0
/* 800C3138  40 82 00 24 */	bne lbl_800C315C
/* 800C313C  7F C3 F3 78 */	mr r3, r30
/* 800C3140  48 01 95 39 */	bl checkGuardActionChange__9daAlink_cFv
/* 800C3144  2C 03 00 00 */	cmpwi r3, 0
/* 800C3148  40 82 00 14 */	bne lbl_800C315C
/* 800C314C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800C3150  A8 1E 2F E6 */	lha r0, 0x2fe6(r30)
/* 800C3154  7C 03 00 00 */	cmpw r3, r0
/* 800C3158  41 82 00 18 */	beq lbl_800C3170
lbl_800C315C:
/* 800C315C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C3160  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800C3164  7F C3 F3 78 */	mr r3, r30
/* 800C3168  48 00 02 51 */	bl procWaitInit__9daAlink_cFv
/* 800C316C  48 00 00 9C */	b lbl_800C3208
lbl_800C3170:
/* 800C3170  7F E3 FB 78 */	mr r3, r31
/* 800C3174  C0 22 93 B4 */	lfs f1, lit_10040(r2)
/* 800C3178  48 26 52 B5 */	bl checkPass__12J3DFrameCtrlFf
/* 800C317C  2C 03 00 00 */	cmpwi r3, 0
/* 800C3180  41 82 00 24 */	beq lbl_800C31A4
/* 800C3184  7F C3 F3 78 */	mr r3, r30
/* 800C3188  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005D@ha */
/* 800C318C  38 84 00 5D */	addi r4, r4, 0x005D /* 0x0001005D@l */
/* 800C3190  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C3194  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C3198  7D 89 03 A6 */	mtctr r12
/* 800C319C  4E 80 04 21 */	bctrl 
/* 800C31A0  48 00 00 68 */	b lbl_800C3208
lbl_800C31A4:
/* 800C31A4  7F E3 FB 78 */	mr r3, r31
/* 800C31A8  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800C31AC  48 26 52 81 */	bl checkPass__12J3DFrameCtrlFf
/* 800C31B0  2C 03 00 00 */	cmpwi r3, 0
/* 800C31B4  41 82 00 24 */	beq lbl_800C31D8
/* 800C31B8  7F C3 F3 78 */	mr r3, r30
/* 800C31BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005E@ha */
/* 800C31C0  38 84 00 5E */	addi r4, r4, 0x005E /* 0x0001005E@l */
/* 800C31C4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C31C8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C31CC  7D 89 03 A6 */	mtctr r12
/* 800C31D0  4E 80 04 21 */	bctrl 
/* 800C31D4  48 00 00 34 */	b lbl_800C3208
lbl_800C31D8:
/* 800C31D8  7F E3 FB 78 */	mr r3, r31
/* 800C31DC  C0 22 95 98 */	lfs f1, lit_25684(r2)
/* 800C31E0  48 26 52 4D */	bl checkPass__12J3DFrameCtrlFf
/* 800C31E4  2C 03 00 00 */	cmpwi r3, 0
/* 800C31E8  41 82 00 20 */	beq lbl_800C3208
/* 800C31EC  7F C3 F3 78 */	mr r3, r30
/* 800C31F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005F@ha */
/* 800C31F4  38 84 00 5F */	addi r4, r4, 0x005F /* 0x0001005F@l */
/* 800C31F8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C31FC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C3200  7D 89 03 A6 */	mtctr r12
/* 800C3204  4E 80 04 21 */	bctrl 
lbl_800C3208:
/* 800C3208  38 60 00 01 */	li r3, 1
/* 800C320C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3210  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C3214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3218  7C 08 03 A6 */	mtlr r0
/* 800C321C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3220  4E 80 00 20 */	blr 
