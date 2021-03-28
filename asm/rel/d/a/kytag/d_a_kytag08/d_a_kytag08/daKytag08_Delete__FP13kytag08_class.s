lbl_8085AEA8:
/* 8085AEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085AEAC  7C 08 02 A6 */	mflr r0
/* 8085AEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085AEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085AEB8  7C 7F 1B 78 */	mr r31, r3
/* 8085AEBC  80 63 05 9C */	lwz r3, 0x59c(r3)
/* 8085AEC0  28 03 00 00 */	cmplwi r3, 0
/* 8085AEC4  41 82 00 40 */	beq lbl_8085AF04
/* 8085AEC8  4B A2 3D 98 */	b deleteAllParticle__14JPABaseEmitterFv
/* 8085AECC  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 8085AED0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8085AED4  60 00 00 01 */	ori r0, r0, 1
/* 8085AED8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8085AEDC  38 00 00 01 */	li r0, 1
/* 8085AEE0  90 03 00 24 */	stw r0, 0x24(r3)
/* 8085AEE4  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 8085AEE8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8085AEEC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8085AEF0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8085AEF4  38 00 00 00 */	li r0, 0
/* 8085AEF8  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 8085AEFC  90 03 00 EC */	stw r0, 0xec(r3)
/* 8085AF00  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_8085AF04:
/* 8085AF04  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8085AF08  28 03 00 00 */	cmplwi r3, 0
/* 8085AF0C  41 82 00 40 */	beq lbl_8085AF4C
/* 8085AF10  4B A2 3D 50 */	b deleteAllParticle__14JPABaseEmitterFv
/* 8085AF14  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8085AF18  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8085AF1C  60 00 00 01 */	ori r0, r0, 1
/* 8085AF20  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8085AF24  38 00 00 01 */	li r0, 1
/* 8085AF28  90 03 00 24 */	stw r0, 0x24(r3)
/* 8085AF2C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8085AF30  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8085AF34  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8085AF38  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8085AF3C  38 00 00 00 */	li r0, 0
/* 8085AF40  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8085AF44  90 03 00 EC */	stw r0, 0xec(r3)
/* 8085AF48  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_8085AF4C:
/* 8085AF4C  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8085AF50  3C 80 80 86 */	lis r4, stringBase0@ha
/* 8085AF54  38 84 B3 10 */	addi r4, r4, stringBase0@l
/* 8085AF58  4B 7D 20 B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8085AF5C  38 60 00 01 */	li r3, 1
/* 8085AF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085AF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085AF68  7C 08 03 A6 */	mtlr r0
/* 8085AF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8085AF70  4E 80 00 20 */	blr 
