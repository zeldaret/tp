lbl_8002E348:
/* 8002E348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002E34C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002E350  88 05 5E 8F */	lbz r0, 0x5e8f(r5)
/* 8002E354  28 00 00 05 */	cmplwi r0, 5
/* 8002E358  40 82 00 28 */	bne lbl_8002E380
/* 8002E35C  38 60 00 00 */	li r3, 0
/* 8002E360  38 00 00 02 */	li r0, 2
/* 8002E364  7C 09 03 A6 */	mtctr r0
lbl_8002E368:
/* 8002E368  7C 85 1A 14 */	add r4, r5, r3
/* 8002E36C  88 04 5E 90 */	lbz r0, 0x5e90(r4)
/* 8002E370  28 00 00 00 */	cmplwi r0, 0
/* 8002E374  4D 82 00 20 */	beqlr 
/* 8002E378  38 63 00 01 */	addi r3, r3, 1
/* 8002E37C  42 00 FF EC */	bdnz lbl_8002E368
lbl_8002E380:
/* 8002E380  38 60 FF FF */	li r3, -1
/* 8002E384  4E 80 00 20 */	blr 
