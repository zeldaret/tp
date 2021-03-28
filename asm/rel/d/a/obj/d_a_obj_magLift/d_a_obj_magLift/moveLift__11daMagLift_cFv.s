lbl_80C8DD88:
/* 80C8DD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DD8C  7C 08 02 A6 */	mflr r0
/* 80C8DD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DD94  3C 80 80 C9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C8DD98  38 A4 E6 DC */	addi r5, r4, cNullVec__6Z2Calc@l
/* 80C8DD9C  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80C8DDA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80C8DDA4  41 82 00 E4 */	beq lbl_80C8DE88
/* 80C8DDA8  3C 80 80 C9 */	lis r4, data_80C8E85C@ha
/* 80C8DDAC  38 84 E8 5C */	addi r4, r4, data_80C8E85C@l
/* 80C8DDB0  88 04 00 00 */	lbz r0, 0(r4)
/* 80C8DDB4  7C 00 07 75 */	extsb. r0, r0
/* 80C8DDB8  40 82 00 B8 */	bne lbl_80C8DE70
/* 80C8DDBC  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 80C8DDC0  80 05 00 24 */	lwz r0, 0x24(r5)
/* 80C8DDC4  90 C5 00 74 */	stw r6, 0x74(r5)
/* 80C8DDC8  90 05 00 78 */	stw r0, 0x78(r5)
/* 80C8DDCC  80 05 00 28 */	lwz r0, 0x28(r5)
/* 80C8DDD0  90 05 00 7C */	stw r0, 0x7c(r5)
/* 80C8DDD4  38 E5 00 74 */	addi r7, r5, 0x74
/* 80C8DDD8  80 C5 00 2C */	lwz r6, 0x2c(r5)
/* 80C8DDDC  80 05 00 30 */	lwz r0, 0x30(r5)
/* 80C8DDE0  90 C7 00 0C */	stw r6, 0xc(r7)
/* 80C8DDE4  90 07 00 10 */	stw r0, 0x10(r7)
/* 80C8DDE8  80 05 00 34 */	lwz r0, 0x34(r5)
/* 80C8DDEC  90 07 00 14 */	stw r0, 0x14(r7)
/* 80C8DDF0  80 C5 00 38 */	lwz r6, 0x38(r5)
/* 80C8DDF4  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 80C8DDF8  90 C7 00 18 */	stw r6, 0x18(r7)
/* 80C8DDFC  90 07 00 1C */	stw r0, 0x1c(r7)
/* 80C8DE00  80 05 00 40 */	lwz r0, 0x40(r5)
/* 80C8DE04  90 07 00 20 */	stw r0, 0x20(r7)
/* 80C8DE08  80 C5 00 44 */	lwz r6, 0x44(r5)
/* 80C8DE0C  80 05 00 48 */	lwz r0, 0x48(r5)
/* 80C8DE10  90 C7 00 24 */	stw r6, 0x24(r7)
/* 80C8DE14  90 07 00 28 */	stw r0, 0x28(r7)
/* 80C8DE18  80 05 00 4C */	lwz r0, 0x4c(r5)
/* 80C8DE1C  90 07 00 2C */	stw r0, 0x2c(r7)
/* 80C8DE20  80 C5 00 50 */	lwz r6, 0x50(r5)
/* 80C8DE24  80 05 00 54 */	lwz r0, 0x54(r5)
/* 80C8DE28  90 C7 00 30 */	stw r6, 0x30(r7)
/* 80C8DE2C  90 07 00 34 */	stw r0, 0x34(r7)
/* 80C8DE30  80 05 00 58 */	lwz r0, 0x58(r5)
/* 80C8DE34  90 07 00 38 */	stw r0, 0x38(r7)
/* 80C8DE38  80 C5 00 5C */	lwz r6, 0x5c(r5)
/* 80C8DE3C  80 05 00 60 */	lwz r0, 0x60(r5)
/* 80C8DE40  90 C7 00 3C */	stw r6, 0x3c(r7)
/* 80C8DE44  90 07 00 40 */	stw r0, 0x40(r7)
/* 80C8DE48  80 05 00 64 */	lwz r0, 0x64(r5)
/* 80C8DE4C  90 07 00 44 */	stw r0, 0x44(r7)
/* 80C8DE50  80 C5 00 68 */	lwz r6, 0x68(r5)
/* 80C8DE54  80 05 00 6C */	lwz r0, 0x6c(r5)
/* 80C8DE58  90 C7 00 48 */	stw r6, 0x48(r7)
/* 80C8DE5C  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80C8DE60  80 05 00 70 */	lwz r0, 0x70(r5)
/* 80C8DE64  90 07 00 50 */	stw r0, 0x50(r7)
/* 80C8DE68  38 00 00 01 */	li r0, 1
/* 80C8DE6C  98 04 00 00 */	stb r0, 0(r4)
lbl_80C8DE70:
/* 80C8DE70  88 03 05 D0 */	lbz r0, 0x5d0(r3)
/* 80C8DE74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C8DE78  39 85 00 74 */	addi r12, r5, 0x74
/* 80C8DE7C  7D 8C 02 14 */	add r12, r12, r0
/* 80C8DE80  4B 6D 42 04 */	b __ptmf_scall
/* 80C8DE84  60 00 00 00 */	nop 
lbl_80C8DE88:
/* 80C8DE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DE8C  7C 08 03 A6 */	mtlr r0
/* 80C8DE90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DE94  4E 80 00 20 */	blr 
