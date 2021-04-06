lbl_8046D35C:
/* 8046D35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D360  7C 08 02 A6 */	mflr r0
/* 8046D364  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046D36C  7C 7F 1B 78 */	mr r31, r3
/* 8046D370  38 7F 05 9C */	addi r3, r31, 0x59c
/* 8046D374  3C 80 80 47 */	lis r4, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D378  38 84 DA 50 */	addi r4, r4, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D37C  38 84 00 16 */	addi r4, r4, 0x16
/* 8046D380  4B BB FC 89 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8046D384  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 8046D388  28 03 00 00 */	cmplwi r3, 0
/* 8046D38C  41 82 00 40 */	beq lbl_8046D3CC
/* 8046D390  4B E1 18 D1 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8046D394  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 8046D398  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D39C  60 00 00 01 */	ori r0, r0, 1
/* 8046D3A0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D3A4  38 00 00 01 */	li r0, 1
/* 8046D3A8  90 03 00 24 */	stw r0, 0x24(r3)
/* 8046D3AC  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 8046D3B0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D3B4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8046D3B8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D3BC  38 00 00 00 */	li r0, 0
/* 8046D3C0  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 8046D3C4  90 03 00 EC */	stw r0, 0xec(r3)
/* 8046D3C8  90 1F 05 A4 */	stw r0, 0x5a4(r31)
lbl_8046D3CC:
/* 8046D3CC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8046D3D0  28 03 00 00 */	cmplwi r3, 0
/* 8046D3D4  41 82 00 40 */	beq lbl_8046D414
/* 8046D3D8  4B E1 18 89 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8046D3DC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8046D3E0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D3E4  60 00 00 01 */	ori r0, r0, 1
/* 8046D3E8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D3EC  38 00 00 01 */	li r0, 1
/* 8046D3F0  90 03 00 24 */	stw r0, 0x24(r3)
/* 8046D3F4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8046D3F8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D3FC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8046D400  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D404  38 00 00 00 */	li r0, 0
/* 8046D408  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8046D40C  90 03 00 EC */	stw r0, 0xec(r3)
/* 8046D410  90 1F 05 A8 */	stw r0, 0x5a8(r31)
lbl_8046D414:
/* 8046D414  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 8046D418  28 03 00 00 */	cmplwi r3, 0
/* 8046D41C  41 82 00 40 */	beq lbl_8046D45C
/* 8046D420  4B E1 18 41 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8046D424  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 8046D428  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D42C  60 00 00 01 */	ori r0, r0, 1
/* 8046D430  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D434  38 00 00 01 */	li r0, 1
/* 8046D438  90 03 00 24 */	stw r0, 0x24(r3)
/* 8046D43C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 8046D440  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8046D444  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8046D448  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8046D44C  38 00 00 00 */	li r0, 0
/* 8046D450  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 8046D454  90 03 00 EC */	stw r0, 0xec(r3)
/* 8046D458  90 1F 05 AC */	stw r0, 0x5ac(r31)
lbl_8046D45C:
/* 8046D45C  38 60 00 01 */	li r3, 1
/* 8046D460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046D464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D468  7C 08 03 A6 */	mtlr r0
/* 8046D46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D470  4E 80 00 20 */	blr 
