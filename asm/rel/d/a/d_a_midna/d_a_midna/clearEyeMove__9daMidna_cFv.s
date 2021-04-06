lbl_804C2A68:
/* 804C2A68  3C 80 80 4C */	lis r4, lit_4278@ha /* 0x804C6580@ha */
/* 804C2A6C  C0 04 65 80 */	lfs f0, lit_4278@l(r4)  /* 0x804C6580@l */
/* 804C2A70  80 83 06 F0 */	lwz r4, 0x6f0(r3)
/* 804C2A74  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 804C2A78  80 83 06 F4 */	lwz r4, 0x6f4(r3)
/* 804C2A7C  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 804C2A80  80 83 06 F0 */	lwz r4, 0x6f0(r3)
/* 804C2A84  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 804C2A88  80 63 06 F4 */	lwz r3, 0x6f4(r3)
/* 804C2A8C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 804C2A90  3C 60 80 4C */	lis r3, struct_804C6CD8+0x0@ha /* 0x804C6CD8@ha */
/* 804C2A94  8C 03 6C D8 */	lbzu r0, struct_804C6CD8+0x0@l(r3)  /* 0x804C6CD8@l */
/* 804C2A98  28 00 00 00 */	cmplwi r0, 0
/* 804C2A9C  4D 82 00 20 */	beqlr 
/* 804C2AA0  38 00 00 00 */	li r0, 0
/* 804C2AA4  98 03 00 00 */	stb r0, 0(r3)
/* 804C2AA8  38 00 00 03 */	li r0, 3
/* 804C2AAC  3C 60 80 4C */	lis r3, struct_804C6CD8+0x1@ha /* 0x804C6CD9@ha */
/* 804C2AB0  98 03 6C D9 */	stb r0, struct_804C6CD8+0x1@l(r3)  /* 0x804C6CD9@l */
/* 804C2AB4  4E 80 00 20 */	blr 
