lbl_80023EC4:
/* 80023EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023EC8  7C 08 02 A6 */	mflr r0
/* 80023ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023ED0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80023ED4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80023ED8  38 63 00 49 */	addi r3, r3, 0x49
/* 80023EDC  4C C6 31 82 */	crclr 6
/* 80023EE0  4B FE 2D 2D */	bl OSReport_Error
/* 80023EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023EE8  7C 08 03 A6 */	mtlr r0
/* 80023EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80023EF0  4E 80 00 20 */	blr 
