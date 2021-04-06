lbl_800ED0D4:
/* 800ED0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED0D8  7C 08 02 A6 */	mflr r0
/* 800ED0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED0E4  48 27 50 F5 */	bl _savegpr_28
/* 800ED0E8  7C 7C 1B 78 */	mr r28, r3
/* 800ED0EC  7C 9D 23 78 */	mr r29, r4
/* 800ED0F0  7C BE 2B 78 */	mr r30, r5
/* 800ED0F4  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800ED0F8  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800ED0FC  4B FF FD 15 */	bl getReinHandType__9daAlink_cCFv
/* 800ED100  2C 03 00 02 */	cmpwi r3, 2
/* 800ED104  40 82 00 48 */	bne lbl_800ED14C
/* 800ED108  7F 83 E3 78 */	mr r3, r28
/* 800ED10C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED110  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800ED114  7D 89 03 A6 */	mtctr r12
/* 800ED118  4E 80 04 21 */	bctrl 
/* 800ED11C  38 9F 42 B4 */	addi r4, r31, 0x42b4
/* 800ED120  7F A5 EB 78 */	mr r5, r29
/* 800ED124  48 25 9C 49 */	bl PSMTXMultVec
/* 800ED128  7F 83 E3 78 */	mr r3, r28
/* 800ED12C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED130  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800ED134  7D 89 03 A6 */	mtctr r12
/* 800ED138  4E 80 04 21 */	bctrl 
/* 800ED13C  38 9F 42 9C */	addi r4, r31, 0x429c
/* 800ED140  7F C5 F3 78 */	mr r5, r30
/* 800ED144  48 25 9C 29 */	bl PSMTXMultVec
/* 800ED148  48 00 00 90 */	b lbl_800ED1D8
lbl_800ED14C:
/* 800ED14C  2C 03 00 01 */	cmpwi r3, 1
/* 800ED150  40 82 00 48 */	bne lbl_800ED198
/* 800ED154  7F 83 E3 78 */	mr r3, r28
/* 800ED158  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED15C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800ED160  7D 89 03 A6 */	mtctr r12
/* 800ED164  4E 80 04 21 */	bctrl 
/* 800ED168  38 9F 42 90 */	addi r4, r31, 0x4290
/* 800ED16C  7F A5 EB 78 */	mr r5, r29
/* 800ED170  48 25 9B FD */	bl PSMTXMultVec
/* 800ED174  7F 83 E3 78 */	mr r3, r28
/* 800ED178  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED17C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800ED180  7D 89 03 A6 */	mtctr r12
/* 800ED184  4E 80 04 21 */	bctrl 
/* 800ED188  38 9F 42 A8 */	addi r4, r31, 0x42a8
/* 800ED18C  7F C5 F3 78 */	mr r5, r30
/* 800ED190  48 25 9B DD */	bl PSMTXMultVec
/* 800ED194  48 00 00 44 */	b lbl_800ED1D8
lbl_800ED198:
/* 800ED198  7F 83 E3 78 */	mr r3, r28
/* 800ED19C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED1A0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800ED1A4  7D 89 03 A6 */	mtctr r12
/* 800ED1A8  4E 80 04 21 */	bctrl 
/* 800ED1AC  38 9F 42 90 */	addi r4, r31, 0x4290
/* 800ED1B0  7F A5 EB 78 */	mr r5, r29
/* 800ED1B4  48 25 9B B9 */	bl PSMTXMultVec
/* 800ED1B8  7F 83 E3 78 */	mr r3, r28
/* 800ED1BC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800ED1C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800ED1C4  7D 89 03 A6 */	mtctr r12
/* 800ED1C8  4E 80 04 21 */	bctrl 
/* 800ED1CC  38 9F 42 9C */	addi r4, r31, 0x429c
/* 800ED1D0  7F C5 F3 78 */	mr r5, r30
/* 800ED1D4  48 25 9B 99 */	bl PSMTXMultVec
lbl_800ED1D8:
/* 800ED1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED1DC  48 27 50 49 */	bl _restgpr_28
/* 800ED1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED1E4  7C 08 03 A6 */	mtlr r0
/* 800ED1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED1EC  4E 80 00 20 */	blr 
