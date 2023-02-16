lbl_802A49D8:
/* 802A49D8  80 0D 85 EC */	lwz r0, __OSReport_disable-0x2C(r13)
/* 802A49DC  28 00 00 00 */	cmplwi r0, 0
/* 802A49E0  4D 82 00 20 */	beqlr 
/* 802A49E4  1C 64 00 6C */	mulli r3, r4, 0x6c
/* 802A49E8  38 63 00 14 */	addi r3, r3, 0x14
/* 802A49EC  7C 60 1A 14 */	add r3, r0, r3
/* 802A49F0  90 A3 00 68 */	stw r5, 0x68(r3)
/* 802A49F4  90 C3 00 64 */	stw r6, 0x64(r3)
/* 802A49F8  4E 80 00 20 */	blr 
