lbl_803449A0:
/* 803449A0  7C 08 02 A6 */	mflr r0
/* 803449A4  90 01 00 04 */	stw r0, 4(r1)
/* 803449A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803449AC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 803449B0  3B C3 00 00 */	addi r30, r3, 0
/* 803449B4  3B E4 00 00 */	addi r31, r4, 0
/* 803449B8  80 AD 91 68 */	lwz r5, Enabled(r13)
/* 803449BC  3C 05 5A 01 */	addis r0, r5, 0x5a01
/* 803449C0  28 00 00 5A */	cmplwi r0, 0x5a
/* 803449C4  41 82 00 0C */	beq lbl_803449D0
/* 803449C8  38 60 00 02 */	li r3, 2
/* 803449CC  48 00 01 C0 */	b lbl_80344B8C
lbl_803449D0:
/* 803449D0  80 6D 91 60 */	lwz r3, Chan(r13)
/* 803449D4  38 A0 00 00 */	li r5, 0
/* 803449D8  80 8D 91 64 */	lwz r4, Dev(r13)
/* 803449DC  4B FF F6 4D */	bl EXILock
/* 803449E0  2C 03 00 00 */	cmpwi r3, 0
/* 803449E4  40 82 00 0C */	bne lbl_803449F0
/* 803449E8  38 60 00 00 */	li r3, 0
/* 803449EC  48 00 01 A0 */	b lbl_80344B8C
lbl_803449F0:
/* 803449F0  38 9E 00 00 */	addi r4, r30, 0
/* 803449F4  38 60 00 0D */	li r3, 0xd
/* 803449F8  48 00 00 18 */	b lbl_80344A10
lbl_803449FC:
/* 803449FC  88 04 00 00 */	lbz r0, 0(r4)
/* 80344A00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80344A04  40 82 00 08 */	bne lbl_80344A0C
/* 80344A08  98 64 00 00 */	stb r3, 0(r4)
lbl_80344A0C:
/* 80344A0C  38 84 00 01 */	addi r4, r4, 1
lbl_80344A10:
/* 80344A10  7C 1E 20 50 */	subf r0, r30, r4
/* 80344A14  7C 00 F8 40 */	cmplw r0, r31
/* 80344A18  41 80 FF E4 */	blt lbl_803449FC
/* 80344A1C  3C 00 A0 01 */	lis r0, 0xa001
/* 80344A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344A24  3B 40 00 00 */	li r26, 0
/* 80344A28  3F A0 20 01 */	lis r29, 0x2001
/* 80344A2C  48 00 01 4C */	b lbl_80344B78
lbl_80344A30:
/* 80344A30  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A34  38 A0 00 03 */	li r5, 3
/* 80344A38  80 8D 91 64 */	lwz r4, Dev(r13)
/* 80344A3C  4B FF EE 2D */	bl EXISelect
/* 80344A40  2C 03 00 00 */	cmpwi r3, 0
/* 80344A44  40 82 00 0C */	bne lbl_80344A50
/* 80344A48  38 00 FF FF */	li r0, -1
/* 80344A4C  48 00 00 5C */	b lbl_80344AA8
lbl_80344A50:
/* 80344A50  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80344A54  38 81 00 10 */	addi r4, r1, 0x10
/* 80344A58  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A5C  38 A0 00 04 */	li r5, 4
/* 80344A60  38 C0 00 01 */	li r6, 1
/* 80344A64  38 E0 00 00 */	li r7, 0
/* 80344A68  4B FF E2 99 */	bl EXIImm
/* 80344A6C  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A70  4B FF E6 79 */	bl EXISync
/* 80344A74  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A78  38 81 00 10 */	addi r4, r1, 0x10
/* 80344A7C  38 A0 00 01 */	li r5, 1
/* 80344A80  38 C0 00 00 */	li r6, 0
/* 80344A84  38 E0 00 00 */	li r7, 0
/* 80344A88  4B FF E2 79 */	bl EXIImm
/* 80344A8C  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A90  4B FF E6 59 */	bl EXISync
/* 80344A94  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344A98  4B FF EE FD */	bl EXIDeselect
/* 80344A9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80344AA0  54 00 46 3E */	srwi r0, r0, 0x18
/* 80344AA4  20 00 00 10 */	subfic r0, r0, 0x10
lbl_80344AA8:
/* 80344AA8  2C 00 00 00 */	cmpwi r0, 0
/* 80344AAC  7C 1B 03 78 */	mr r27, r0
/* 80344AB0  40 80 00 0C */	bge lbl_80344ABC
/* 80344AB4  3B 40 00 03 */	li r26, 3
/* 80344AB8  48 00 00 C8 */	b lbl_80344B80
lbl_80344ABC:
/* 80344ABC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80344AC0  40 80 00 0C */	bge lbl_80344ACC
/* 80344AC4  7C 00 F8 40 */	cmplw r0, r31
/* 80344AC8  41 80 00 B0 */	blt lbl_80344B78
lbl_80344ACC:
/* 80344ACC  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344AD0  38 A0 00 03 */	li r5, 3
/* 80344AD4  80 8D 91 64 */	lwz r4, Dev(r13)
/* 80344AD8  4B FF ED 91 */	bl EXISelect
/* 80344ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80344AE0  40 82 00 0C */	bne lbl_80344AEC
/* 80344AE4  3B 40 00 03 */	li r26, 3
/* 80344AE8  48 00 00 98 */	b lbl_80344B80
lbl_80344AEC:
/* 80344AEC  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344AF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80344AF4  38 A0 00 04 */	li r5, 4
/* 80344AF8  38 C0 00 01 */	li r6, 1
/* 80344AFC  38 E0 00 00 */	li r7, 0
/* 80344B00  4B FF E2 01 */	bl EXIImm
/* 80344B04  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344B08  4B FF E5 E1 */	bl EXISync
/* 80344B0C  48 00 00 54 */	b lbl_80344B60
lbl_80344B10:
/* 80344B10  2C 1B 00 04 */	cmpwi r27, 4
/* 80344B14  40 80 00 0C */	bge lbl_80344B20
/* 80344B18  7C 1B F8 40 */	cmplw r27, r31
/* 80344B1C  41 80 00 54 */	blt lbl_80344B70
lbl_80344B20:
/* 80344B20  28 1F 00 04 */	cmplwi r31, 4
/* 80344B24  40 80 00 0C */	bge lbl_80344B30
/* 80344B28  7F FC FB 78 */	mr r28, r31
/* 80344B2C  48 00 00 08 */	b lbl_80344B34
lbl_80344B30:
/* 80344B30  3B 80 00 04 */	li r28, 4
lbl_80344B34:
/* 80344B34  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344B38  7F 85 E3 78 */	mr r5, r28
/* 80344B3C  38 9E 00 00 */	addi r4, r30, 0
/* 80344B40  38 C0 00 01 */	li r6, 1
/* 80344B44  38 E0 00 00 */	li r7, 0
/* 80344B48  4B FF E1 B9 */	bl EXIImm
/* 80344B4C  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344B50  7F DE E2 14 */	add r30, r30, r28
/* 80344B54  7F FC F8 50 */	subf r31, r28, r31
/* 80344B58  7F 7C D8 50 */	subf r27, r28, r27
/* 80344B5C  4B FF E5 8D */	bl EXISync
lbl_80344B60:
/* 80344B60  2C 1B 00 00 */	cmpwi r27, 0
/* 80344B64  41 82 00 0C */	beq lbl_80344B70
/* 80344B68  28 1F 00 00 */	cmplwi r31, 0
/* 80344B6C  40 82 FF A4 */	bne lbl_80344B10
lbl_80344B70:
/* 80344B70  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344B74  4B FF EE 21 */	bl EXIDeselect
lbl_80344B78:
/* 80344B78  28 1F 00 00 */	cmplwi r31, 0
/* 80344B7C  40 82 FE B4 */	bne lbl_80344A30
lbl_80344B80:
/* 80344B80  80 6D 91 60 */	lwz r3, Chan(r13)
/* 80344B84  4B FF F5 99 */	bl EXIUnlock
/* 80344B88  7F 43 D3 78 */	mr r3, r26
lbl_80344B8C:
/* 80344B8C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80344B90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80344B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80344B98  7C 08 03 A6 */	mtlr r0
/* 80344B9C  4E 80 00 20 */	blr 
