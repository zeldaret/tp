lbl_8033FBD8:
/* 8033FBD8  7C 08 02 A6 */	mflr r0
/* 8033FBDC  90 01 00 04 */	stw r0, 4(r1)
/* 8033FBE0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033FBE4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033FBE8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8033FBEC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8033FBF0  4B FF DB 05 */	bl OSDisableInterrupts
/* 8033FBF4  7C 7E 1B 78 */	mr r30, r3
/* 8033FBF8  48 00 2B 25 */	bl __OSGetSystemTime
/* 8033FBFC  3C A0 CC 00 */	lis r5, 0xCC00 /* 0xCC003000@ha */
/* 8033FC00  80 05 30 00 */	lwz r0, 0x3000(r5)  /* 0xCC003000@l */
/* 8033FC04  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8033FC08  40 82 00 DC */	bne lbl_8033FCE4
/* 8033FC0C  80 0D 91 24 */	lwz r0, Down(r13)
/* 8033FC10  2C 00 00 00 */	cmpwi r0, 0
/* 8033FC14  40 82 00 40 */	bne lbl_8033FC54
/* 8033FC18  80 0D 91 30 */	lwz r0, HoldUp(r13)
/* 8033FC1C  38 C0 00 00 */	li r6, 0
/* 8033FC20  80 AD 91 34 */	lwz r5, data_804516B4(r13)
/* 8033FC24  38 E0 00 01 */	li r7, 1
/* 8033FC28  7C 00 32 78 */	xor r0, r0, r6
/* 8033FC2C  7C A5 32 78 */	xor r5, r5, r6
/* 8033FC30  90 ED 91 24 */	stw r7, Down(r13)
/* 8033FC34  7C A0 03 79 */	or. r0, r5, r0
/* 8033FC38  41 82 00 08 */	beq lbl_8033FC40
/* 8033FC3C  48 00 00 08 */	b lbl_8033FC44
lbl_8033FC40:
/* 8033FC40  7C C7 33 78 */	mr r7, r6
lbl_8033FC44:
/* 8033FC44  90 8D 91 3C */	stw r4, data_804516BC(r13)
/* 8033FC48  7C FD 3B 78 */	mr r29, r7
/* 8033FC4C  90 6D 91 38 */	stw r3, HoldDown(r13)
/* 8033FC50  48 00 01 48 */	b lbl_8033FD98
lbl_8033FC54:
/* 8033FC54  80 0D 91 30 */	lwz r0, HoldUp(r13)
/* 8033FC58  39 20 00 00 */	li r9, 0
/* 8033FC5C  80 AD 91 34 */	lwz r5, data_804516B4(r13)
/* 8033FC60  39 40 00 01 */	li r10, 1
/* 8033FC64  7C 00 4A 78 */	xor r0, r0, r9
/* 8033FC68  7C A5 4A 78 */	xor r5, r5, r9
/* 8033FC6C  7C A0 03 79 */	or. r0, r5, r0
/* 8033FC70  40 82 00 58 */	bne lbl_8033FCC8
/* 8033FC74  3C C0 80 00 */	lis r6, 0x8000 /* 0x800000F8@ha */
/* 8033FC78  80 AD 91 3C */	lwz r5, data_804516BC(r13)
/* 8033FC7C  80 E6 00 F8 */	lwz r7, 0x00F8(r6)  /* 0x800000F8@l */
/* 8033FC80  3C C0 43 1C */	lis r6, 0x431C /* 0x431BDE83@ha */
/* 8033FC84  39 06 DE 83 */	addi r8, r6, 0xDE83 /* 0x431BDE83@l */
/* 8033FC88  80 0D 91 38 */	lwz r0, HoldDown(r13)
/* 8033FC8C  54 E6 F0 BE */	srwi r6, r7, 2
/* 8033FC90  7C C8 30 16 */	mulhwu r6, r8, r6
/* 8033FC94  54 C6 8B FE */	srwi r6, r6, 0xf
/* 8033FC98  1C C6 00 64 */	mulli r6, r6, 0x64
/* 8033FC9C  7C E5 20 10 */	subfc r7, r5, r4
/* 8033FCA0  7C 00 19 10 */	subfe r0, r0, r3
/* 8033FCA4  54 C8 E8 FE */	srwi r8, r6, 3
/* 8033FCA8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8033FCAC  6D 26 80 00 */	xoris r6, r9, 0x8000
/* 8033FCB0  7C 07 40 10 */	subfc r0, r7, r8
/* 8033FCB4  7C A5 31 10 */	subfe r5, r5, r6
/* 8033FCB8  7C A6 31 10 */	subfe r5, r6, r6
/* 8033FCBC  7C A5 00 D1 */	neg. r5, r5
/* 8033FCC0  40 82 00 08 */	bne lbl_8033FCC8
/* 8033FCC4  7D 2A 4B 78 */	mr r10, r9
lbl_8033FCC8:
/* 8033FCC8  2C 0A 00 00 */	cmpwi r10, 0
/* 8033FCCC  41 82 00 0C */	beq lbl_8033FCD8
/* 8033FCD0  38 00 00 01 */	li r0, 1
/* 8033FCD4  48 00 00 08 */	b lbl_8033FCDC
lbl_8033FCD8:
/* 8033FCD8  38 00 00 00 */	li r0, 0
lbl_8033FCDC:
/* 8033FCDC  7C 1D 03 78 */	mr r29, r0
/* 8033FCE0  48 00 00 B8 */	b lbl_8033FD98
lbl_8033FCE4:
/* 8033FCE4  80 0D 91 24 */	lwz r0, Down(r13)
/* 8033FCE8  2C 00 00 00 */	cmpwi r0, 0
/* 8033FCEC  41 82 00 34 */	beq lbl_8033FD20
/* 8033FCF0  80 AD 91 28 */	lwz r5, LastState(r13)
/* 8033FCF4  38 00 00 00 */	li r0, 0
/* 8033FCF8  90 0D 91 24 */	stw r0, Down(r13)
/* 8033FCFC  2C 05 00 00 */	cmpwi r5, 0
/* 8033FD00  3B A5 00 00 */	addi r29, r5, 0
/* 8033FD04  41 82 00 10 */	beq lbl_8033FD14
/* 8033FD08  90 8D 91 34 */	stw r4, data_804516B4(r13)
/* 8033FD0C  90 6D 91 30 */	stw r3, HoldUp(r13)
/* 8033FD10  48 00 00 88 */	b lbl_8033FD98
lbl_8033FD14:
/* 8033FD14  90 0D 91 34 */	stw r0, data_804516B4(r13)
/* 8033FD18  90 0D 91 30 */	stw r0, HoldUp(r13)
/* 8033FD1C  48 00 00 7C */	b lbl_8033FD98
lbl_8033FD20:
/* 8033FD20  80 CD 91 30 */	lwz r6, HoldUp(r13)
/* 8033FD24  39 00 00 00 */	li r8, 0
/* 8033FD28  80 ED 91 34 */	lwz r7, data_804516B4(r13)
/* 8033FD2C  7C C0 42 78 */	xor r0, r6, r8
/* 8033FD30  7C E5 42 78 */	xor r5, r7, r8
/* 8033FD34  7C A0 03 79 */	or. r0, r5, r0
/* 8033FD38  41 82 00 50 */	beq lbl_8033FD88
/* 8033FD3C  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 8033FD40  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 8033FD44  3C A0 10 62 */	lis r5, 0x1062 /* 0x10624DD3@ha */
/* 8033FD48  38 A5 4D D3 */	addi r5, r5, 0x4DD3 /* 0x10624DD3@l */
/* 8033FD4C  54 00 F0 BE */	srwi r0, r0, 2
/* 8033FD50  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8033FD54  54 00 D1 BE */	srwi r0, r0, 6
/* 8033FD58  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8033FD5C  7C E7 20 10 */	subfc r7, r7, r4
/* 8033FD60  7C A6 19 10 */	subfe r5, r6, r3
/* 8033FD64  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8033FD68  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 8033FD6C  7C 00 38 10 */	subfc r0, r0, r7
/* 8033FD70  7C A5 31 10 */	subfe r5, r5, r6
/* 8033FD74  7C A6 31 10 */	subfe r5, r6, r6
/* 8033FD78  7C A5 00 D1 */	neg. r5, r5
/* 8033FD7C  41 82 00 0C */	beq lbl_8033FD88
/* 8033FD80  3B A0 00 01 */	li r29, 1
/* 8033FD84  48 00 00 14 */	b lbl_8033FD98
lbl_8033FD88:
/* 8033FD88  38 00 00 00 */	li r0, 0
/* 8033FD8C  90 0D 91 34 */	stw r0, data_804516B4(r13)
/* 8033FD90  3B A0 00 00 */	li r29, 0
/* 8033FD94  90 0D 91 30 */	stw r0, HoldUp(r13)
lbl_8033FD98:
/* 8033FD98  3C A0 80 00 */	lis r5, 0x8000 /* 0x800030E3@ha */
/* 8033FD9C  93 AD 91 28 */	stw r29, LastState(r13)
/* 8033FDA0  88 05 30 E3 */	lbz r0, 0x30E3(r5)  /* 0x800030E3@l */
/* 8033FDA4  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8033FDA8  41 82 00 A0 */	beq lbl_8033FE48
/* 8033FDAC  1D 40 00 3C */	mulli r10, r0, 0x3c
/* 8033FDB0  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 8033FDB4  81 2D 90 B4 */	lwz r9, __OSStartTime+0x4(r13)
/* 8033FDB8  81 0D 90 B0 */	lwz r8, __OSStartTime(r13)
/* 8033FDBC  54 06 F0 BE */	srwi r6, r0, 2
/* 8033FDC0  7D 40 FE 70 */	srawi r0, r10, 0x1f
/* 8033FDC4  7C E0 31 D6 */	mullw r7, r0, r6
/* 8033FDC8  7C 0A 30 16 */	mulhwu r0, r10, r6
/* 8033FDCC  7C AA 31 D6 */	mullw r5, r10, r6
/* 8033FDD0  7D 29 28 14 */	addc r9, r9, r5
/* 8033FDD4  3B E0 00 00 */	li r31, 0
/* 8033FDD8  7C E7 02 14 */	add r7, r7, r0
/* 8033FDDC  7C 0A F9 D6 */	mullw r0, r10, r31
/* 8033FDE0  7C 07 02 14 */	add r0, r7, r0
/* 8033FDE4  7D 08 01 14 */	adde r8, r8, r0
/* 8033FDE8  6D 07 80 00 */	xoris r7, r8, 0x8000
/* 8033FDEC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8033FDF0  7C 04 48 10 */	subfc r0, r4, r9
/* 8033FDF4  7C A5 39 10 */	subfe r5, r5, r7
/* 8033FDF8  7C A7 39 10 */	subfe r5, r7, r7
/* 8033FDFC  7C A5 00 D1 */	neg. r5, r5
/* 8033FE00  41 82 00 48 */	beq lbl_8033FE48
/* 8033FE04  7C 89 20 10 */	subfc r4, r9, r4
/* 8033FE08  7C 68 19 10 */	subfe r3, r8, r3
/* 8033FE0C  38 A0 00 00 */	li r5, 0
/* 8033FE10  48 02 25 15 */	bl __div2i
/* 8033FE14  38 A0 00 00 */	li r5, 0
/* 8033FE18  38 C0 00 02 */	li r6, 2
/* 8033FE1C  48 02 25 09 */	bl __div2i
/* 8033FE20  38 00 00 01 */	li r0, 1
/* 8033FE24  7C 84 00 38 */	and r4, r4, r0
/* 8033FE28  7C 60 F8 38 */	and r0, r3, r31
/* 8033FE2C  7C 83 FA 78 */	xor r3, r4, r31
/* 8033FE30  7C 00 FA 78 */	xor r0, r0, r31
/* 8033FE34  7C 60 03 79 */	or. r0, r3, r0
/* 8033FE38  40 82 00 0C */	bne lbl_8033FE44
/* 8033FE3C  3B A0 00 01 */	li r29, 1
/* 8033FE40  48 00 00 08 */	b lbl_8033FE48
lbl_8033FE44:
/* 8033FE44  3B A0 00 00 */	li r29, 0
lbl_8033FE48:
/* 8033FE48  7F C3 F3 78 */	mr r3, r30
/* 8033FE4C  4B FF D8 D1 */	bl OSRestoreInterrupts
/* 8033FE50  7F A3 EB 78 */	mr r3, r29
/* 8033FE54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033FE58  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033FE5C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033FE60  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8033FE64  38 21 00 18 */	addi r1, r1, 0x18
/* 8033FE68  7C 08 03 A6 */	mtlr r0
/* 8033FE6C  4E 80 00 20 */	blr 
