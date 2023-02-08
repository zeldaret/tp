lbl_80CEF6A4:
/* 80CEF6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF6A8  7C 08 02 A6 */	mflr r0
/* 80CEF6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF6B0  3C 80 80 CF */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CEFF04@ha */
/* 80CEF6B4  38 E4 FF 04 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CEFF04@l */
/* 80CEF6B8  3C 80 80 CF */	lis r4, data_80CEFFF8@ha /* 0x80CEFFF8@ha */
/* 80CEF6BC  38 C4 FF F8 */	addi r6, r4, data_80CEFFF8@l /* 0x80CEFFF8@l */
/* 80CEF6C0  88 06 00 00 */	lbz r0, 0(r6)
/* 80CEF6C4  7C 00 07 75 */	extsb. r0, r0
/* 80CEF6C8  40 82 00 70 */	bne lbl_80CEF738
/* 80CEF6CC  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80CEF6D0  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80CEF6D4  90 87 00 68 */	stw r4, 0x68(r7)
/* 80CEF6D8  90 07 00 6C */	stw r0, 0x6c(r7)
/* 80CEF6DC  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80CEF6E0  90 07 00 70 */	stw r0, 0x70(r7)
/* 80CEF6E4  38 A7 00 68 */	addi r5, r7, 0x68
/* 80CEF6E8  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80CEF6EC  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80CEF6F0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CEF6F4  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CEF6F8  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80CEF6FC  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CEF700  80 87 00 50 */	lwz r4, 0x50(r7)
/* 80CEF704  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80CEF708  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CEF70C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CEF710  80 07 00 58 */	lwz r0, 0x58(r7)
/* 80CEF714  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CEF718  80 87 00 5C */	lwz r4, 0x5c(r7)
/* 80CEF71C  80 07 00 60 */	lwz r0, 0x60(r7)
/* 80CEF720  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CEF724  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CEF728  80 07 00 64 */	lwz r0, 0x64(r7)
/* 80CEF72C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CEF730  38 00 00 01 */	li r0, 1
/* 80CEF734  98 06 00 00 */	stb r0, 0(r6)
lbl_80CEF738:
/* 80CEF738  88 03 05 86 */	lbz r0, 0x586(r3)
/* 80CEF73C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CEF740  39 87 00 68 */	addi r12, r7, 0x68
/* 80CEF744  7D 8C 02 14 */	add r12, r12, r0
/* 80CEF748  4B 67 29 3D */	bl __ptmf_scall
/* 80CEF74C  60 00 00 00 */	nop 
/* 80CEF750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF754  7C 08 03 A6 */	mtlr r0
/* 80CEF758  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF75C  4E 80 00 20 */	blr 
