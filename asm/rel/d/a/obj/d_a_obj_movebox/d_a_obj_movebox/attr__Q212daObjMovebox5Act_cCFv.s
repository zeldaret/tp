lbl_8047E6B0:
/* 8047E6B0  80 03 08 AC */	lwz r0, 0x8ac(r3)
/* 8047E6B4  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047E6B8  3C 60 80 48 */	lis r3, M_attr__Q212daObjMovebox5Act_c@ha
/* 8047E6BC  38 03 11 68 */	addi r0, r3, M_attr__Q212daObjMovebox5Act_c@l
/* 8047E6C0  7C 60 22 14 */	add r3, r0, r4
/* 8047E6C4  4E 80 00 20 */	blr 
