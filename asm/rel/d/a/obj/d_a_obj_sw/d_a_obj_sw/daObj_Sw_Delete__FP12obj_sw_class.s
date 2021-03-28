lbl_80CF26F8:
/* 80CF26F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF26FC  7C 08 02 A6 */	mflr r0
/* 80CF2700  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF2704  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF2708  4B 66 FA D4 */	b _savegpr_29
/* 80CF270C  7C 7D 1B 78 */	mr r29, r3
/* 80CF2710  88 03 05 70 */	lbz r0, 0x570(r3)
/* 80CF2714  28 00 00 08 */	cmplwi r0, 8
/* 80CF2718  40 82 00 18 */	bne lbl_80CF2730
/* 80CF271C  38 7D 05 68 */	addi r3, r29, 0x568
/* 80CF2720  3C 80 80 CF */	lis r4, stringBase0@ha
/* 80CF2724  38 84 30 EC */	addi r4, r4, stringBase0@l
/* 80CF2728  4B 33 A8 E0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CF272C  48 00 00 18 */	b lbl_80CF2744
lbl_80CF2730:
/* 80CF2730  38 7D 05 68 */	addi r3, r29, 0x568
/* 80CF2734  3C 80 80 CF */	lis r4, stringBase0@ha
/* 80CF2738  38 84 30 EC */	addi r4, r4, stringBase0@l
/* 80CF273C  38 84 00 08 */	addi r4, r4, 8
/* 80CF2740  4B 33 A8 C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80CF2744:
/* 80CF2744  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 80CF2748  28 00 00 00 */	cmplwi r0, 0
/* 80CF274C  41 82 00 28 */	beq lbl_80CF2774
/* 80CF2750  3B C0 00 00 */	li r30, 0
/* 80CF2754  3B E0 00 00 */	li r31, 0
lbl_80CF2758:
/* 80CF2758  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80CF275C  7C 7D 1A 14 */	add r3, r29, r3
/* 80CF2760  4B 5C B8 98 */	b deleteObject__14Z2SoundObjBaseFv
/* 80CF2764  3B DE 00 01 */	addi r30, r30, 1
/* 80CF2768  2C 1E 00 08 */	cmpwi r30, 8
/* 80CF276C  3B FF 00 64 */	addi r31, r31, 0x64
/* 80CF2770  41 80 FF E8 */	blt lbl_80CF2758
lbl_80CF2774:
/* 80CF2774  38 60 00 01 */	li r3, 1
/* 80CF2778  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF277C  4B 66 FA AC */	b _restgpr_29
/* 80CF2780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF2784  7C 08 03 A6 */	mtlr r0
/* 80CF2788  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF278C  4E 80 00 20 */	blr 
