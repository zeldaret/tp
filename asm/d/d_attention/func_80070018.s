lbl_80070018:
/* 80070018  54 64 30 32 */	slwi r4, r3, 6
/* 8007001C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80070020  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80070024  7C 60 22 14 */	add r3, r0, r4
/* 80070028  88 63 00 39 */	lbz r3, 0x39(r3)
/* 8007002C  30 03 FF FF */	addic r0, r3, -1
/* 80070030  7C 60 19 10 */	subfe r3, r0, r3
/* 80070034  4E 80 00 20 */	blr 
