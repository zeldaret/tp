lbl_80C5FF2C:
/* 80C5FF2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5FF30  7C 08 02 A6 */	mflr r0
/* 80C5FF34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5FF38  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5FF3C  4B 70 22 A1 */	bl _savegpr_29
/* 80C5FF40  7C 7E 1B 78 */	mr r30, r3
/* 80C5FF44  3C 60 80 C6 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C60854@ha */
/* 80C5FF48  3B E3 08 54 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C60854@l */
/* 80C5FF4C  3C 60 80 C6 */	lis r3, data_80C609EC@ha /* 0x80C609EC@ha */
/* 80C5FF50  38 A3 09 EC */	addi r5, r3, data_80C609EC@l /* 0x80C609EC@l */
/* 80C5FF54  88 05 00 00 */	lbz r0, 0(r5)
/* 80C5FF58  7C 00 07 75 */	extsb. r0, r0
/* 80C5FF5C  40 82 00 B8 */	bne lbl_80C60014
/* 80C5FF60  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C5FF64  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C5FF68  90 7F 00 74 */	stw r3, 0x74(r31)
/* 80C5FF6C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80C5FF70  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C5FF74  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80C5FF78  38 9F 00 74 */	addi r4, r31, 0x74
/* 80C5FF7C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C5FF80  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C5FF84  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C5FF88  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C5FF8C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C5FF90  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C5FF94  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C5FF98  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C5FF9C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C5FFA0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C5FFA4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C5FFA8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C5FFAC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80C5FFB0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C5FFB4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C5FFB8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80C5FFBC  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C5FFC0  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80C5FFC4  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80C5FFC8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C5FFCC  90 64 00 30 */	stw r3, 0x30(r4)
/* 80C5FFD0  90 04 00 34 */	stw r0, 0x34(r4)
/* 80C5FFD4  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C5FFD8  90 04 00 38 */	stw r0, 0x38(r4)
/* 80C5FFDC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80C5FFE0  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80C5FFE4  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80C5FFE8  90 04 00 40 */	stw r0, 0x40(r4)
/* 80C5FFEC  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80C5FFF0  90 04 00 44 */	stw r0, 0x44(r4)
/* 80C5FFF4  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80C5FFF8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80C5FFFC  90 64 00 48 */	stw r3, 0x48(r4)
/* 80C60000  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80C60004  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80C60008  90 04 00 50 */	stw r0, 0x50(r4)
/* 80C6000C  38 00 00 01 */	li r0, 1
/* 80C60010  98 05 00 00 */	stb r0, 0(r5)
lbl_80C60014:
/* 80C60014  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80C60018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6001C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60020  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C60024  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C60028  7C 05 07 74 */	extsb r5, r0
/* 80C6002C  4B 3D 53 35 */	bl isSwitch__10dSv_info_cCFii
/* 80C60030  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C60034  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C60038  7C 00 E8 40 */	cmplw r0, r29
/* 80C6003C  41 82 00 20 */	beq lbl_80C6005C
/* 80C60040  28 00 00 00 */	cmplwi r0, 0
/* 80C60044  41 82 00 10 */	beq lbl_80C60054
/* 80C60048  7F C3 F3 78 */	mr r3, r30
/* 80C6004C  48 00 01 B5 */	bl init_modeMoveClose__13daLv4PoGate_cFv
/* 80C60050  48 00 00 0C */	b lbl_80C6005C
lbl_80C60054:
/* 80C60054  7F C3 F3 78 */	mr r3, r30
/* 80C60058  48 00 00 49 */	bl init_modeMoveOpen__13daLv4PoGate_cFv
lbl_80C6005C:
/* 80C6005C  7F C3 F3 78 */	mr r3, r30
/* 80C60060  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C60064  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C60068  39 9F 00 74 */	addi r12, r31, 0x74
/* 80C6006C  7D 8C 02 14 */	add r12, r12, r0
/* 80C60070  4B 70 20 15 */	bl __ptmf_scall
/* 80C60074  60 00 00 00 */	nop 
/* 80C60078  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6007C  4B 70 21 AD */	bl _restgpr_29
/* 80C60080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C60084  7C 08 03 A6 */	mtlr r0
/* 80C60088  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6008C  4E 80 00 20 */	blr 
