lbl_8054A7F0:
/* 8054A7F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054A7F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054A7F8  54 60 20 36 */	slwi r0, r3, 4
/* 8054A7FC  7C 65 02 14 */	add r3, r5, r0
/* 8054A800  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8054A804  7C 03 20 38 */	and r3, r0, r4
/* 8054A808  4E 80 00 20 */	blr 
