lbl_80343AA4:
/* 80343AA4  7C 08 02 A6 */	mflr r0
/* 80343AA8  90 01 00 04 */	stw r0, 4(r1)
/* 80343AAC  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 80343AB0  93 E1 02 F4 */	stw r31, 0x2f4(r1)
/* 80343AB4  93 C1 02 F0 */	stw r30, 0x2f0(r1)
/* 80343AB8  93 A1 02 EC */	stw r29, 0x2ec(r1)
/* 80343ABC  3B E4 00 00 */	addi r31, r4, 0
/* 80343AC0  7C 63 07 34 */	extsh r3, r3
/* 80343AC4  38 03 FF F7 */	addi r0, r3, -9
/* 80343AC8  3C 60 55 55 */	lis r3, 0x5555 /* 0x55555556@ha */
/* 80343ACC  38 63 55 56 */	addi r3, r3, 0x5556 /* 0x55555556@l */
/* 80343AD0  7C 63 00 96 */	mulhw r3, r3, r0
/* 80343AD4  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80343AD8  7F C3 02 14 */	add r30, r3, r0
/* 80343ADC  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 80343AE0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006800@ha */
/* 80343AE4  38 63 68 00 */	addi r3, r3, 0x6800 /* 0xCC006800@l */
/* 80343AE8  7C 63 02 14 */	add r3, r3, r0
/* 80343AEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80343AF0  70 00 07 F5 */	andi. r0, r0, 0x7f5
/* 80343AF4  60 00 00 02 */	ori r0, r0, 2
/* 80343AF8  90 03 00 00 */	stw r0, 0(r3)
/* 80343AFC  57 C4 30 32 */	slwi r4, r30, 6
/* 80343B00  3C 60 80 45 */	lis r3, Ecb@ha /* 0x8044C570@ha */
/* 80343B04  38 03 C5 70 */	addi r0, r3, Ecb@l /* 0x8044C570@l */
/* 80343B08  7C 60 22 14 */	add r3, r0, r4
/* 80343B0C  80 03 00 00 */	lwz r0, 0(r3)
/* 80343B10  7C 1D 03 78 */	mr r29, r0
/* 80343B14  28 00 00 00 */	cmplwi r0, 0
/* 80343B18  41 82 00 38 */	beq lbl_80343B50
/* 80343B1C  38 61 00 18 */	addi r3, r1, 0x18
/* 80343B20  4B FF 84 E1 */	bl OSClearContext
/* 80343B24  38 61 00 18 */	addi r3, r1, 0x18
/* 80343B28  4B FF 83 11 */	bl OSSetCurrentContext
/* 80343B2C  38 7E 00 00 */	addi r3, r30, 0
/* 80343B30  38 9F 00 00 */	addi r4, r31, 0
/* 80343B34  39 9D 00 00 */	addi r12, r29, 0
/* 80343B38  7D 88 03 A6 */	mtlr r12
/* 80343B3C  4E 80 00 21 */	blrl 
/* 80343B40  38 61 00 18 */	addi r3, r1, 0x18
/* 80343B44  4B FF 84 BD */	bl OSClearContext
/* 80343B48  7F E3 FB 78 */	mr r3, r31
/* 80343B4C  4B FF 82 ED */	bl OSSetCurrentContext
lbl_80343B50:
/* 80343B50  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 80343B54  83 E1 02 F4 */	lwz r31, 0x2f4(r1)
/* 80343B58  83 C1 02 F0 */	lwz r30, 0x2f0(r1)
/* 80343B5C  83 A1 02 EC */	lwz r29, 0x2ec(r1)
/* 80343B60  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 80343B64  7C 08 03 A6 */	mtlr r0
/* 80343B68  4E 80 00 20 */	blr 
