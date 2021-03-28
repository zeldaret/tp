lbl_802D8F40:
/* 802D8F40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D8F44  7C 08 02 A6 */	mflr r0
/* 802D8F48  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D8F4C  39 61 00 30 */	addi r11, r1, 0x30
/* 802D8F50  48 08 92 89 */	bl _savegpr_28
/* 802D8F54  7C 7C 1B 78 */	mr r28, r3
/* 802D8F58  7C 9D 23 78 */	mr r29, r4
/* 802D8F5C  7C BE 2B 78 */	mr r30, r5
/* 802D8F60  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802D8F64  7C A4 2B 78 */	mr r4, r5
/* 802D8F68  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D8F6C  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D8F70  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D8F74  40 82 00 0C */	bne lbl_802D8F80
/* 802D8F78  3B E0 00 00 */	li r31, 0
/* 802D8F7C  48 00 00 18 */	b lbl_802D8F94
lbl_802D8F80:
/* 802D8F80  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 802D8F84  41 82 00 0C */	beq lbl_802D8F90
/* 802D8F88  3B E0 00 02 */	li r31, 2
/* 802D8F8C  48 00 00 08 */	b lbl_802D8F94
lbl_802D8F90:
/* 802D8F90  3B E0 00 01 */	li r31, 1
lbl_802D8F94:
/* 802D8F94  28 1E 00 00 */	cmplwi r30, 0
/* 802D8F98  40 82 00 08 */	bne lbl_802D8FA0
/* 802D8F9C  3B C1 00 10 */	addi r30, r1, 0x10
lbl_802D8FA0:
/* 802D8FA0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802D8FA4  28 00 00 00 */	cmplwi r0, 0
/* 802D8FA8  40 82 00 F0 */	bne lbl_802D9098
/* 802D8FAC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 802D8FB0  41 82 00 1C */	beq lbl_802D8FCC
/* 802D8FB4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 802D8FB8  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D8FBC  7C 03 02 14 */	add r0, r3, r0
/* 802D8FC0  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802D8FC4  90 9E 00 00 */	stw r4, 0(r30)
/* 802D8FC8  48 00 00 DC */	b lbl_802D90A4
lbl_802D8FCC:
/* 802D8FCC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 802D8FD0  41 82 00 60 */	beq lbl_802D9030
/* 802D8FD4  80 7C 00 68 */	lwz r3, 0x68(r28)
/* 802D8FD8  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802D8FDC  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 802D8FE0  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D8FE4  7C 00 2A 14 */	add r0, r0, r5
/* 802D8FE8  7C 63 00 50 */	subf r3, r3, r0
/* 802D8FEC  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 802D8FF0  7F E6 FB 78 */	mr r6, r31
/* 802D8FF4  38 E1 00 0C */	addi r7, r1, 0xc
/* 802D8FF8  4B FF E9 1D */	bl fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
/* 802D8FFC  90 7E 00 00 */	stw r3, 0(r30)
/* 802D9000  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D9004  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802D9008  2C 1F 00 02 */	cmpwi r31, 2
/* 802D900C  40 82 00 98 */	bne lbl_802D90A4
/* 802D9010  7F 83 E3 78 */	mr r3, r28
/* 802D9014  7F A4 EB 78 */	mr r4, r29
/* 802D9018  80 BE 00 00 */	lwz r5, 0(r30)
/* 802D901C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802D9020  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D9024  7D 89 03 A6 */	mtctr r12
/* 802D9028  4E 80 04 21 */	bctrl 
/* 802D902C  48 00 00 78 */	b lbl_802D90A4
lbl_802D9030:
/* 802D9030  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 802D9034  41 82 00 70 */	beq lbl_802D90A4
/* 802D9038  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 802D903C  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 802D9040  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D9044  7C 84 02 14 */	add r4, r4, r0
/* 802D9048  80 DC 00 38 */	lwz r6, 0x38(r28)
/* 802D904C  7F E7 FB 78 */	mr r7, r31
/* 802D9050  81 1C 00 5C */	lwz r8, 0x5c(r28)
/* 802D9054  39 21 00 08 */	addi r9, r1, 8
/* 802D9058  4B FF F4 1D */	bl fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
/* 802D905C  28 1E 00 00 */	cmplwi r30, 0
/* 802D9060  41 82 00 08 */	beq lbl_802D9068
/* 802D9064  90 7E 00 00 */	stw r3, 0(r30)
lbl_802D9068:
/* 802D9068  80 01 00 08 */	lwz r0, 8(r1)
/* 802D906C  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802D9070  2C 1F 00 02 */	cmpwi r31, 2
/* 802D9074  40 82 00 30 */	bne lbl_802D90A4
/* 802D9078  7F 83 E3 78 */	mr r3, r28
/* 802D907C  7F A4 EB 78 */	mr r4, r29
/* 802D9080  80 BE 00 00 */	lwz r5, 0(r30)
/* 802D9084  81 9C 00 00 */	lwz r12, 0(r28)
/* 802D9088  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D908C  7D 89 03 A6 */	mtctr r12
/* 802D9090  4E 80 04 21 */	bctrl 
/* 802D9094  48 00 00 10 */	b lbl_802D90A4
lbl_802D9098:
/* 802D9098  28 1E 00 00 */	cmplwi r30, 0
/* 802D909C  41 82 00 08 */	beq lbl_802D90A4
/* 802D90A0  90 BE 00 00 */	stw r5, 0(r30)
lbl_802D90A4:
/* 802D90A4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D90A8  39 61 00 30 */	addi r11, r1, 0x30
/* 802D90AC  48 08 91 79 */	bl _restgpr_28
/* 802D90B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D90B4  7C 08 03 A6 */	mtlr r0
/* 802D90B8  38 21 00 30 */	addi r1, r1, 0x30
/* 802D90BC  4E 80 00 20 */	blr 
