.include "macros.inc"

.section .text, "ax" # 800236c0


.global fpcLnIt_MethodCall
fpcLnIt_MethodCall:
/* 800236C0 00020600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800236C4 00020604  7C 08 02 A6 */	mflr r0
/* 800236C8 00020608  90 01 00 24 */	stw r0, 0x24(r1)
/* 800236CC 0002060C  39 61 00 20 */	addi r11, r1, 0x20
/* 800236D0 00020610  48 33 EB 09 */	bl _savegpr_28
/* 800236D4 00020614  7C 7C 1B 78 */	mr r28, r3
/* 800236D8 00020618  7C 9D 23 78 */	mr r29, r4
/* 800236DC 0002061C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800236E0 00020620  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800236E4 00020624  4B FF E0 11 */	bl fpcLy_CurrentLayer
/* 800236E8 00020628  7C 7E 1B 78 */	mr r30, r3
/* 800236EC 0002062C  7F E3 FB 78 */	mr r3, r31
/* 800236F0 00020630  4B FF DF FD */	bl fpcLy_SetCurrentLayer
/* 800236F4 00020634  7F 83 E3 78 */	mr r3, r28
/* 800236F8 00020638  7F A4 EB 78 */	mr r4, r29
/* 800236FC 0002063C  48 24 33 81 */	bl cTgIt_MethodCall
/* 80023700 00020640  7C 7F 1B 78 */	mr r31, r3
/* 80023704 00020644  7F C3 F3 78 */	mr r3, r30
/* 80023708 00020648  4B FF DF E5 */	bl fpcLy_SetCurrentLayer
/* 8002370C 0002064C  7F E3 FB 78 */	mr r3, r31
/* 80023710 00020650  39 61 00 20 */	addi r11, r1, 0x20
/* 80023714 00020654  48 33 EB 11 */	bl _restgpr_28
/* 80023718 00020658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002371C 0002065C  7C 08 03 A6 */	mtlr r0
/* 80023720 00020660  38 21 00 20 */	addi r1, r1, 0x20
/* 80023724 00020664  4E 80 00 20 */	blr 

.global fpcLnIt_Queue
fpcLnIt_Queue:
/* 80023728 00020668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002372C 0002066C  7C 08 02 A6 */	mflr r0
/* 80023730 00020670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023734 00020674  90 61 00 08 */	stw r3, 8(r1)
/* 80023738 00020678  38 00 00 00 */	li r0, 0
/* 8002373C 0002067C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80023740 00020680  38 6D 80 58 */	addi r3, r13, lbl_804505D8-_SDA_BASE_
.global fpcLnIt_MethodCall
/* 80023744 00020684  3C 80 80 02 */	lis r4, fpcLnIt_MethodCall@ha
.global fpcLnIt_MethodCall
/* 80023748 00020688  38 84 36 C0 */	addi r4, r4, fpcLnIt_MethodCall@l
/* 8002374C 0002068C  38 A1 00 08 */	addi r5, r1, 8
/* 80023750 00020690  48 24 2D F1 */	bl cTrIt_Method
/* 80023754 00020694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023758 00020698  7C 08 03 A6 */	mtlr r0
/* 8002375C 0002069C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023760 000206A0  4E 80 00 20 */	blr 

