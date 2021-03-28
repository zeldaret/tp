lbl_800068DC:
/* 800068DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800068E0  7C 08 02 A6 */	mflr r0
/* 800068E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800068E8  39 61 00 20 */	addi r11, r1, 0x20
/* 800068EC  48 35 B8 F1 */	bl _savegpr_29
/* 800068F0  7C 7D 1B 78 */	mr r29, r3
/* 800068F4  7C 9E 23 78 */	mr r30, r4
/* 800068F8  48 33 6D FD */	bl OSDisableInterrupts
/* 800068FC  7C 7F 1B 78 */	mr r31, r3
/* 80006900  88 0D 86 35 */	lbz r0, struct_80450BB4+0x1(r13)
/* 80006904  28 00 00 00 */	cmplwi r0, 0
/* 80006908  40 82 00 3C */	bne lbl_80006944
/* 8000690C  38 00 00 01 */	li r0, 1
/* 80006910  98 0D 86 35 */	stb r0, struct_80450BB4+0x1(r13)
/* 80006914  7F A3 EB 78 */	mr r3, r29
/* 80006918  7F C4 F3 78 */	mr r4, r30
/* 8000691C  38 A0 00 00 */	li r5, 0
/* 80006920  38 C0 00 00 */	li r6, 0
/* 80006924  3C E0 80 36 */	lis r7, vprintf@ha
/* 80006928  38 E7 67 04 */	addi r7, r7, vprintf@l
/* 8000692C  3D 00 80 3E */	lis r8, mDoPrintf_FiberStack@ha
/* 80006930  39 08 B7 40 */	addi r8, r8, mDoPrintf_FiberStack@l
/* 80006934  39 08 08 00 */	addi r8, r8, 0x800
/* 80006938  4B FF FE 61 */	bl OSSwitchFiberEx__FUlUlUlUlUlUl
/* 8000693C  38 00 00 00 */	li r0, 0
/* 80006940  98 0D 86 35 */	stb r0, struct_80450BB4+0x1(r13)
lbl_80006944:
/* 80006944  7F E3 FB 78 */	mr r3, r31
/* 80006948  48 33 6D D5 */	bl OSRestoreInterrupts
/* 8000694C  39 61 00 20 */	addi r11, r1, 0x20
/* 80006950  48 35 B8 D9 */	bl _restgpr_29
/* 80006954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006958  7C 08 03 A6 */	mtlr r0
/* 8000695C  38 21 00 20 */	addi r1, r1, 0x20
/* 80006960  4E 80 00 20 */	blr 
