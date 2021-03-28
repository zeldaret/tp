lbl_80D2CE4C:
/* 80D2CE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2CE50  7C 08 02 A6 */	mflr r0
/* 80D2CE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2CE58  3C 80 80 D3 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D2CE5C  38 C4 E8 4C */	addi r6, r4, cNullVec__6Z2Calc@l
/* 80D2CE60  3C 80 80 D3 */	lis r4, data_80D2EB94@ha
/* 80D2CE64  38 A4 EB 94 */	addi r5, r4, data_80D2EB94@l
/* 80D2CE68  88 05 00 00 */	lbz r0, 0(r5)
/* 80D2CE6C  7C 00 07 75 */	extsb. r0, r0
/* 80D2CE70  40 82 01 00 */	bne lbl_80D2CF70
/* 80D2CE74  80 86 00 C8 */	lwz r4, 0xc8(r6)
/* 80D2CE78  80 06 00 CC */	lwz r0, 0xcc(r6)
/* 80D2CE7C  90 86 01 40 */	stw r4, 0x140(r6)
/* 80D2CE80  90 06 01 44 */	stw r0, 0x144(r6)
/* 80D2CE84  80 06 00 D0 */	lwz r0, 0xd0(r6)
/* 80D2CE88  90 06 01 48 */	stw r0, 0x148(r6)
/* 80D2CE8C  38 86 01 40 */	addi r4, r6, 0x140
/* 80D2CE90  80 E6 00 D4 */	lwz r7, 0xd4(r6)
/* 80D2CE94  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 80D2CE98  90 E4 00 0C */	stw r7, 0xc(r4)
/* 80D2CE9C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D2CEA0  80 06 00 DC */	lwz r0, 0xdc(r6)
/* 80D2CEA4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D2CEA8  80 E6 00 E0 */	lwz r7, 0xe0(r6)
/* 80D2CEAC  80 06 00 E4 */	lwz r0, 0xe4(r6)
/* 80D2CEB0  90 E4 00 18 */	stw r7, 0x18(r4)
/* 80D2CEB4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D2CEB8  80 06 00 E8 */	lwz r0, 0xe8(r6)
/* 80D2CEBC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D2CEC0  80 E6 00 EC */	lwz r7, 0xec(r6)
/* 80D2CEC4  80 06 00 F0 */	lwz r0, 0xf0(r6)
/* 80D2CEC8  90 E4 00 24 */	stw r7, 0x24(r4)
/* 80D2CECC  90 04 00 28 */	stw r0, 0x28(r4)
/* 80D2CED0  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80D2CED4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80D2CED8  80 E6 00 F8 */	lwz r7, 0xf8(r6)
/* 80D2CEDC  80 06 00 FC */	lwz r0, 0xfc(r6)
/* 80D2CEE0  90 E4 00 30 */	stw r7, 0x30(r4)
/* 80D2CEE4  90 04 00 34 */	stw r0, 0x34(r4)
/* 80D2CEE8  80 06 01 00 */	lwz r0, 0x100(r6)
/* 80D2CEEC  90 04 00 38 */	stw r0, 0x38(r4)
/* 80D2CEF0  80 E6 01 04 */	lwz r7, 0x104(r6)
/* 80D2CEF4  80 06 01 08 */	lwz r0, 0x108(r6)
/* 80D2CEF8  90 E4 00 3C */	stw r7, 0x3c(r4)
/* 80D2CEFC  90 04 00 40 */	stw r0, 0x40(r4)
/* 80D2CF00  80 06 01 0C */	lwz r0, 0x10c(r6)
/* 80D2CF04  90 04 00 44 */	stw r0, 0x44(r4)
/* 80D2CF08  80 E6 01 10 */	lwz r7, 0x110(r6)
/* 80D2CF0C  80 06 01 14 */	lwz r0, 0x114(r6)
/* 80D2CF10  90 E4 00 48 */	stw r7, 0x48(r4)
/* 80D2CF14  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80D2CF18  80 06 01 18 */	lwz r0, 0x118(r6)
/* 80D2CF1C  90 04 00 50 */	stw r0, 0x50(r4)
/* 80D2CF20  80 E6 01 1C */	lwz r7, 0x11c(r6)
/* 80D2CF24  80 06 01 20 */	lwz r0, 0x120(r6)
/* 80D2CF28  90 E4 00 54 */	stw r7, 0x54(r4)
/* 80D2CF2C  90 04 00 58 */	stw r0, 0x58(r4)
/* 80D2CF30  80 06 01 24 */	lwz r0, 0x124(r6)
/* 80D2CF34  90 04 00 5C */	stw r0, 0x5c(r4)
/* 80D2CF38  80 E6 01 28 */	lwz r7, 0x128(r6)
/* 80D2CF3C  80 06 01 2C */	lwz r0, 0x12c(r6)
/* 80D2CF40  90 E4 00 60 */	stw r7, 0x60(r4)
/* 80D2CF44  90 04 00 64 */	stw r0, 0x64(r4)
/* 80D2CF48  80 06 01 30 */	lwz r0, 0x130(r6)
/* 80D2CF4C  90 04 00 68 */	stw r0, 0x68(r4)
/* 80D2CF50  80 E6 01 34 */	lwz r7, 0x134(r6)
/* 80D2CF54  80 06 01 38 */	lwz r0, 0x138(r6)
/* 80D2CF58  90 E4 00 6C */	stw r7, 0x6c(r4)
/* 80D2CF5C  90 04 00 70 */	stw r0, 0x70(r4)
/* 80D2CF60  80 06 01 3C */	lwz r0, 0x13c(r6)
/* 80D2CF64  90 04 00 74 */	stw r0, 0x74(r4)
/* 80D2CF68  38 00 00 01 */	li r0, 1
/* 80D2CF6C  98 05 00 00 */	stb r0, 0(r5)
lbl_80D2CF70:
/* 80D2CF70  88 03 0B 00 */	lbz r0, 0xb00(r3)
/* 80D2CF74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D2CF78  39 86 01 40 */	addi r12, r6, 0x140
/* 80D2CF7C  7D 8C 02 14 */	add r12, r12, r0
/* 80D2CF80  4B 63 51 04 */	b __ptmf_scall
/* 80D2CF84  60 00 00 00 */	nop 
/* 80D2CF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2CF8C  7C 08 03 A6 */	mtlr r0
/* 80D2CF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2CF94  4E 80 00 20 */	blr 
