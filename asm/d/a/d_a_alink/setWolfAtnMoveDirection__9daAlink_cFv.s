lbl_80128F5C:
/* 80128F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80128F60  7C 08 02 A6 */	mflr r0
/* 80128F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80128F68  39 61 00 20 */	addi r11, r1, 0x20
/* 80128F6C  48 23 92 71 */	bl _savegpr_29
/* 80128F70  7C 7F 1B 78 */	mr r31, r3
/* 80128F74  4B F8 A5 8D */	bl checkAttentionState__9daAlink_cFv
/* 80128F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128F7C  40 82 00 1C */	bne lbl_80128F98
/* 80128F80  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80128F84  28 00 01 1B */	cmplwi r0, 0x11b
/* 80128F88  41 82 00 10 */	beq lbl_80128F98
/* 80128F8C  38 00 00 00 */	li r0, 0
/* 80128F90  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 80128F94  48 00 01 68 */	b lbl_801290FC
lbl_80128F98:
/* 80128F98  7F E3 FB 78 */	mr r3, r31
/* 80128F9C  38 80 00 8B */	li r4, 0x8b
/* 80128FA0  4B FF F8 6D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80128FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80128FA8  41 82 00 18 */	beq lbl_80128FC0
/* 80128FAC  7F E3 FB 78 */	mr r3, r31
/* 80128FB0  A8 9F 2F E4 */	lha r4, 0x2fe4(r31)
/* 80128FB4  4B FB E9 99 */	bl getChainStickAngleY__9daAlink_cCFs
/* 80128FB8  7C 7E 1B 78 */	mr r30, r3
/* 80128FBC  48 00 00 08 */	b lbl_80128FC4
lbl_80128FC0:
/* 80128FC0  AB DF 2F E2 */	lha r30, 0x2fe2(r31)
lbl_80128FC4:
/* 80128FC4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80128FC8  28 00 00 F6 */	cmplwi r0, 0xf6
/* 80128FCC  41 82 00 0C */	beq lbl_80128FD8
/* 80128FD0  28 00 01 1B */	cmplwi r0, 0x11b
/* 80128FD4  40 82 00 68 */	bne lbl_8012903C
lbl_80128FD8:
/* 80128FD8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80128FDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80128FE0  41 82 00 5C */	beq lbl_8012903C
/* 80128FE4  7F E3 FB 78 */	mr r3, r31
/* 80128FE8  4B F8 A9 1D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80128FEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128FF0  41 82 00 4C */	beq lbl_8012903C
/* 80128FF4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 80128FF8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80128FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129000  40 81 00 34 */	ble lbl_80129034
/* 80129004  AB BF 04 DE */	lha r29, 0x4de(r31)
/* 80129008  B3 DF 04 DE */	sth r30, 0x4de(r31)
/* 8012900C  7F E3 FB 78 */	mr r3, r31
/* 80129010  7F A4 EB 78 */	mr r4, r29
/* 80129014  48 00 10 19 */	bl wolfSideBgCheck__9daAlink_cFs
/* 80129018  2C 03 00 00 */	cmpwi r3, 0
/* 8012901C  41 82 00 20 */	beq lbl_8012903C
/* 80129020  B3 BF 04 DE */	sth r29, 0x4de(r31)
/* 80129024  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80129028  64 00 00 20 */	oris r0, r0, 0x20
/* 8012902C  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80129030  48 00 00 0C */	b lbl_8012903C
lbl_80129034:
/* 80129034  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80129038  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8012903C:
/* 8012903C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 80129040  28 04 00 00 */	cmplwi r4, 0
/* 80129044  41 82 00 14 */	beq lbl_80129058
/* 80129048  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8012904C  38 84 05 38 */	addi r4, r4, 0x538
/* 80129050  48 14 7B B5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80129054  B0 7F 2F E4 */	sth r3, 0x2fe4(r31)
lbl_80129058:
/* 80129058  A8 1F 2F E4 */	lha r0, 0x2fe4(r31)
/* 8012905C  7C 00 F0 50 */	subf r0, r0, r30
/* 80129060  7C 1D 07 34 */	extsh r29, r0
/* 80129064  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80129068  28 00 00 17 */	cmplwi r0, 0x17
/* 8012906C  40 82 00 10 */	bne lbl_8012907C
/* 80129070  38 00 00 00 */	li r0, 0
/* 80129074  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 80129078  48 00 00 84 */	b lbl_801290FC
lbl_8012907C:
/* 8012907C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 80129080  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129088  40 81 00 34 */	ble lbl_801290BC
/* 8012908C  7F E3 FB 78 */	mr r3, r31
/* 80129090  7F A4 EB 78 */	mr r4, r29
/* 80129094  4B FF FE 79 */	bl checkWolfAtnMoveBack__9daAlink_cFs
/* 80129098  2C 03 00 00 */	cmpwi r3, 0
/* 8012909C  41 82 00 10 */	beq lbl_801290AC
/* 801290A0  38 00 00 01 */	li r0, 1
/* 801290A4  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 801290A8  48 00 00 54 */	b lbl_801290FC
lbl_801290AC:
/* 801290AC  7F A3 EB 78 */	mr r3, r29
/* 801290B0  4B F8 A3 E5 */	bl getDirectionFromAngle__9daAlink_cFs
/* 801290B4  98 7F 2F 98 */	stb r3, 0x2f98(r31)
/* 801290B8  48 00 00 44 */	b lbl_801290FC
lbl_801290BC:
/* 801290BC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801290C0  28 00 01 1B */	cmplwi r0, 0x11b
/* 801290C4  41 82 00 38 */	beq lbl_801290FC
/* 801290C8  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 801290CC  28 00 00 01 */	cmplwi r0, 1
/* 801290D0  40 82 00 24 */	bne lbl_801290F4
/* 801290D4  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 801290D8  3C 63 00 01 */	addis r3, r3, 1
/* 801290DC  38 03 80 00 */	addi r0, r3, -32768
/* 801290E0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801290E4  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 801290E8  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 801290EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801290F0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_801290F4:
/* 801290F4  38 00 00 00 */	li r0, 0
/* 801290F8  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_801290FC:
/* 801290FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80129100  48 23 91 29 */	bl _restgpr_29
/* 80129104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80129108  7C 08 03 A6 */	mtlr r0
/* 8012910C  38 21 00 20 */	addi r1, r1, 0x20
/* 80129110  4E 80 00 20 */	blr 
