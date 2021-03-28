lbl_806976B4:
/* 806976B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806976B8  7C 08 02 A6 */	mflr r0
/* 806976BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806976C0  39 61 00 30 */	addi r11, r1, 0x30
/* 806976C4  4B CC AB 08 */	b _savegpr_25
/* 806976C8  7C 7F 1B 78 */	mr r31, r3
/* 806976CC  3C 60 80 69 */	lis r3, stringBase0@ha
/* 806976D0  38 63 7D 98 */	addi r3, r3, stringBase0@l
/* 806976D4  38 80 00 03 */	li r4, 3
/* 806976D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806976DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806976E0  3F 65 00 02 */	addis r27, r5, 2
/* 806976E4  3B 7B C2 F8 */	addi r27, r27, -15624
/* 806976E8  7F 65 DB 78 */	mr r5, r27
/* 806976EC  38 C0 00 80 */	li r6, 0x80
/* 806976F0  4B 9A 4B FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806976F4  7C 7C 1B 78 */	mr r28, r3
/* 806976F8  3C 60 80 69 */	lis r3, stringBase0@ha
/* 806976FC  38 63 7D 98 */	addi r3, r3, stringBase0@l
/* 80697700  38 80 00 04 */	li r4, 4
/* 80697704  7F 65 DB 78 */	mr r5, r27
/* 80697708  38 C0 00 80 */	li r6, 0x80
/* 8069770C  4B 9A 4B E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80697710  7C 7B 1B 78 */	mr r27, r3
/* 80697714  3B 20 00 00 */	li r25, 0
/* 80697718  3B C0 00 00 */	li r30, 0
/* 8069771C  3F A0 11 00 */	lis r29, 0x1100
/* 80697720  48 00 00 60 */	b lbl_80697780
lbl_80697724:
/* 80697724  7F 83 E3 78 */	mr r3, r28
/* 80697728  3C 80 00 02 */	lis r4, 2
/* 8069772C  38 BD 00 84 */	addi r5, r29, 0x84
/* 80697730  4B 97 D5 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80697734  7F 5F F2 14 */	add r26, r31, r30
/* 80697738  90 7A 05 88 */	stw r3, 0x588(r26)
/* 8069773C  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 80697740  28 00 00 00 */	cmplwi r0, 0
/* 80697744  40 82 00 0C */	bne lbl_80697750
/* 80697748  38 60 00 00 */	li r3, 0
/* 8069774C  48 00 00 44 */	b lbl_80697790
lbl_80697750:
/* 80697750  7F 63 DB 78 */	mr r3, r27
/* 80697754  3C 80 00 02 */	lis r4, 2
/* 80697758  38 BD 00 84 */	addi r5, r29, 0x84
/* 8069775C  4B 97 D4 F8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80697760  90 7A 05 8C */	stw r3, 0x58c(r26)
/* 80697764  80 1A 05 8C */	lwz r0, 0x58c(r26)
/* 80697768  28 00 00 00 */	cmplwi r0, 0
/* 8069776C  40 82 00 0C */	bne lbl_80697778
/* 80697770  38 60 00 00 */	li r3, 0
/* 80697774  48 00 00 1C */	b lbl_80697790
lbl_80697778:
/* 80697778  3B 39 00 01 */	addi r25, r25, 1
/* 8069777C  3B DE 00 78 */	addi r30, r30, 0x78
lbl_80697780:
/* 80697780  80 1F 7D 88 */	lwz r0, 0x7d88(r31)
/* 80697784  7C 19 00 00 */	cmpw r25, r0
/* 80697788  41 80 FF 9C */	blt lbl_80697724
/* 8069778C  38 60 00 01 */	li r3, 1
lbl_80697790:
/* 80697790  39 61 00 30 */	addi r11, r1, 0x30
/* 80697794  4B CC AA 84 */	b _restgpr_25
/* 80697798  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069779C  7C 08 03 A6 */	mtlr r0
/* 806977A0  38 21 00 30 */	addi r1, r1, 0x30
/* 806977A4  4E 80 00 20 */	blr 
