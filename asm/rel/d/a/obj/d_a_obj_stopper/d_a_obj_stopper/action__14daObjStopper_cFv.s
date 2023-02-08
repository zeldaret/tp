lbl_80CED708:
/* 80CED708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED70C  7C 08 02 A6 */	mflr r0
/* 80CED710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED714  3C 80 80 CF */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CEF000@ha */
/* 80CED718  38 A4 F0 00 */	addi r5, r4, cNullVec__6Z2Calc@l /* 0x80CEF000@l */
/* 80CED71C  3C 80 80 CF */	lis r4, data_80CEF244@ha /* 0x80CEF244@ha */
/* 80CED720  38 84 F2 44 */	addi r4, r4, data_80CEF244@l /* 0x80CEF244@l */
/* 80CED724  88 04 00 00 */	lbz r0, 0(r4)
/* 80CED728  7C 00 07 75 */	extsb. r0, r0
/* 80CED72C  40 82 00 D0 */	bne lbl_80CED7FC
/* 80CED730  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 80CED734  80 05 00 24 */	lwz r0, 0x24(r5)
/* 80CED738  90 C5 00 80 */	stw r6, 0x80(r5)
/* 80CED73C  90 05 00 84 */	stw r0, 0x84(r5)
/* 80CED740  80 05 00 28 */	lwz r0, 0x28(r5)
/* 80CED744  90 05 00 88 */	stw r0, 0x88(r5)
/* 80CED748  38 E5 00 80 */	addi r7, r5, 0x80
/* 80CED74C  80 C5 00 2C */	lwz r6, 0x2c(r5)
/* 80CED750  80 05 00 30 */	lwz r0, 0x30(r5)
/* 80CED754  90 C7 00 0C */	stw r6, 0xc(r7)
/* 80CED758  90 07 00 10 */	stw r0, 0x10(r7)
/* 80CED75C  80 05 00 34 */	lwz r0, 0x34(r5)
/* 80CED760  90 07 00 14 */	stw r0, 0x14(r7)
/* 80CED764  80 C5 00 38 */	lwz r6, 0x38(r5)
/* 80CED768  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 80CED76C  90 C7 00 18 */	stw r6, 0x18(r7)
/* 80CED770  90 07 00 1C */	stw r0, 0x1c(r7)
/* 80CED774  80 05 00 40 */	lwz r0, 0x40(r5)
/* 80CED778  90 07 00 20 */	stw r0, 0x20(r7)
/* 80CED77C  80 C5 00 44 */	lwz r6, 0x44(r5)
/* 80CED780  80 05 00 48 */	lwz r0, 0x48(r5)
/* 80CED784  90 C7 00 24 */	stw r6, 0x24(r7)
/* 80CED788  90 07 00 28 */	stw r0, 0x28(r7)
/* 80CED78C  80 05 00 4C */	lwz r0, 0x4c(r5)
/* 80CED790  90 07 00 2C */	stw r0, 0x2c(r7)
/* 80CED794  80 C5 00 50 */	lwz r6, 0x50(r5)
/* 80CED798  80 05 00 54 */	lwz r0, 0x54(r5)
/* 80CED79C  90 C7 00 30 */	stw r6, 0x30(r7)
/* 80CED7A0  90 07 00 34 */	stw r0, 0x34(r7)
/* 80CED7A4  80 05 00 58 */	lwz r0, 0x58(r5)
/* 80CED7A8  90 07 00 38 */	stw r0, 0x38(r7)
/* 80CED7AC  80 C5 00 5C */	lwz r6, 0x5c(r5)
/* 80CED7B0  80 05 00 60 */	lwz r0, 0x60(r5)
/* 80CED7B4  90 C7 00 3C */	stw r6, 0x3c(r7)
/* 80CED7B8  90 07 00 40 */	stw r0, 0x40(r7)
/* 80CED7BC  80 05 00 64 */	lwz r0, 0x64(r5)
/* 80CED7C0  90 07 00 44 */	stw r0, 0x44(r7)
/* 80CED7C4  80 C5 00 68 */	lwz r6, 0x68(r5)
/* 80CED7C8  80 05 00 6C */	lwz r0, 0x6c(r5)
/* 80CED7CC  90 C7 00 48 */	stw r6, 0x48(r7)
/* 80CED7D0  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80CED7D4  80 05 00 70 */	lwz r0, 0x70(r5)
/* 80CED7D8  90 07 00 50 */	stw r0, 0x50(r7)
/* 80CED7DC  80 C5 00 74 */	lwz r6, 0x74(r5)
/* 80CED7E0  80 05 00 78 */	lwz r0, 0x78(r5)
/* 80CED7E4  90 C7 00 54 */	stw r6, 0x54(r7)
/* 80CED7E8  90 07 00 58 */	stw r0, 0x58(r7)
/* 80CED7EC  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 80CED7F0  90 07 00 5C */	stw r0, 0x5c(r7)
/* 80CED7F4  38 00 00 01 */	li r0, 1
/* 80CED7F8  98 04 00 00 */	stb r0, 0(r4)
lbl_80CED7FC:
/* 80CED7FC  88 03 09 3C */	lbz r0, 0x93c(r3)
/* 80CED800  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CED804  39 85 00 80 */	addi r12, r5, 0x80
/* 80CED808  7D 8C 02 14 */	add r12, r12, r0
/* 80CED80C  4B 67 48 79 */	bl __ptmf_scall
/* 80CED810  60 00 00 00 */	nop 
/* 80CED814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED818  7C 08 03 A6 */	mtlr r0
/* 80CED81C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED820  4E 80 00 20 */	blr 
