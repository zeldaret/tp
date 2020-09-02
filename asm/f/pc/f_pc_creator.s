.include "macros.inc"

.section .text, "ax" # 80020ea8


.global fpcCt_IsCreatingByID
fpcCt_IsCreatingByID:
/* 80020EA8 0001DDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020EAC 0001DDEC  7C 08 02 A6 */	mflr r0
/* 80020EB0 0001DDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020EB4 0001DDF4  4B FF FC 35 */	bl fpcCtRq_IsCreatingByID
/* 80020EB8 0001DDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020EBC 0001DDFC  7C 08 03 A6 */	mtlr r0
/* 80020EC0 0001DE00  38 21 00 10 */	addi r1, r1, 0x10
/* 80020EC4 0001DE04  4E 80 00 20 */	blr 

.global fpcCt_IsDoing
fpcCt_IsDoing:
/* 80020EC8 0001DE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020ECC 0001DE0C  7C 08 02 A6 */	mflr r0
/* 80020ED0 0001DE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020ED4 0001DE14  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80020ED8 0001DE18  4B FF FD D5 */	bl fpcCtRq_IsDoing
/* 80020EDC 0001DE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020EE0 0001DE20  7C 08 03 A6 */	mtlr r0
/* 80020EE4 0001DE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80020EE8 0001DE28  4E 80 00 20 */	blr 

.global fpcCt_Abort
fpcCt_Abort:
/* 80020EEC 0001DE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020EF0 0001DE30  7C 08 02 A6 */	mflr r0
/* 80020EF4 0001DE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020EF8 0001DE38  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80020EFC 0001DE3C  4B FF FD 19 */	bl fpcCtRq_Cancel
/* 80020F00 0001DE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F04 0001DE44  7C 08 03 A6 */	mtlr r0
/* 80020F08 0001DE48  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F0C 0001DE4C  4E 80 00 20 */	blr 

.global fpcCt_Handler
fpcCt_Handler:
/* 80020F10 0001DE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020F14 0001DE54  7C 08 02 A6 */	mflr r0
/* 80020F18 0001DE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020F1C 0001DE5C  4B FF FE 69 */	bl fpcCtRq_Handler
/* 80020F20 0001DE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F24 0001DE64  7C 08 03 A6 */	mtlr r0
/* 80020F28 0001DE68  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F2C 0001DE6C  4E 80 00 20 */	blr 

