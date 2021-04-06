lbl_800244E8:
/* 800244E8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 800244EC  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 800244F0  1C 04 04 04 */	mulli r0, r4, 0x404
/* 800244F4  7C 63 02 14 */	add r3, r3, r0
/* 800244F8  88 63 03 F4 */	lbz r3, 0x3f4(r3)
/* 800244FC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80024500  41 82 00 0C */	beq lbl_8002450C
/* 80024504  38 60 00 00 */	li r3, 0
/* 80024508  4E 80 00 20 */	blr 
lbl_8002450C:
/* 8002450C  54 63 06 F6 */	rlwinm r3, r3, 0, 0x1b, 0x1b
/* 80024510  30 03 FF FF */	addic r0, r3, -1
/* 80024514  7C 60 19 10 */	subfe r3, r0, r3
/* 80024518  4E 80 00 20 */	blr 
