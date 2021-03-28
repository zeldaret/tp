lbl_80BD67C8:
/* 80BD67C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD67CC  7C 08 02 A6 */	mflr r0
/* 80BD67D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD67D4  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80BD67D8  28 04 00 00 */	cmplwi r4, 0
/* 80BD67DC  41 82 00 30 */	beq lbl_80BD680C
/* 80BD67E0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BD67E4  60 00 00 01 */	ori r0, r0, 1
/* 80BD67E8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BD67EC  38 00 00 01 */	li r0, 1
/* 80BD67F0  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BD67F4  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80BD67F8  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BD67FC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BD6800  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BD6804  38 00 00 00 */	li r0, 0
/* 80BD6808  90 03 05 78 */	stw r0, 0x578(r3)
lbl_80BD680C:
/* 80BD680C  38 63 05 68 */	addi r3, r3, 0x568
/* 80BD6810  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD6814  38 84 68 F0 */	addi r4, r4, l_arcName@l
/* 80BD6818  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD681C  4B 45 67 EC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD6820  38 60 00 01 */	li r3, 1
/* 80BD6824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6828  7C 08 03 A6 */	mtlr r0
/* 80BD682C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6830  4E 80 00 20 */	blr 
