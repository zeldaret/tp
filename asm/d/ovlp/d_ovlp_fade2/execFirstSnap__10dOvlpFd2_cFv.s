lbl_802529F4:
/* 802529F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802529F8  7C 08 02 A6 */	mflr r0
/* 802529FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252A04  7C 7F 1B 78 */	mr r31, r3
/* 80252A08  88 03 01 1C */	lbz r0, 0x11c(r3)
/* 80252A0C  28 00 00 00 */	cmplwi r0, 0
/* 80252A10  41 82 00 54 */	beq lbl_80252A64
/* 80252A14  38 7F 01 1D */	addi r3, r31, 0x11d
/* 80252A18  48 00 04 59 */	bl func_80252E70
/* 80252A1C  7C 60 07 75 */	extsb. r0, r3
/* 80252A20  40 82 00 34 */	bne lbl_80252A54
/* 80252A24  3C 60 80 3C */	lis r3, lit_3721@ha /* 0x803C2CFC@ha */
/* 80252A28  38 83 2C FC */	addi r4, r3, lit_3721@l /* 0x803C2CFC@l */
/* 80252A2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80252A30  80 04 00 04 */	lwz r0, 4(r4)
/* 80252A34  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80252A38  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80252A3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80252A40  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 80252A44  7F E3 FB 78 */	mr r3, r31
/* 80252A48  4B DC BA D5 */	bl fopOvlpM_Done__FP18overlap_task_class
/* 80252A4C  38 00 FF F4 */	li r0, -12
/* 80252A50  98 1F 01 1D */	stb r0, 0x11d(r31)
lbl_80252A54:
/* 80252A54  38 00 00 00 */	li r0, 0
/* 80252A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252A60  98 03 5D 44 */	stb r0, 0x5d44(r3)
lbl_80252A64:
/* 80252A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252A6C  7C 08 03 A6 */	mtlr r0
/* 80252A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80252A74  4E 80 00 20 */	blr 
