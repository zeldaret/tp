lbl_80D3AA3C:
/* 80D3AA3C  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80D3AA40  60 00 00 01 */	ori r0, r0, 1
/* 80D3AA44  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80D3AA48  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80D3AA4C  60 00 00 01 */	ori r0, r0, 1
/* 80D3AA50  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80D3AA54  38 00 00 00 */	li r0, 0
/* 80D3AA58  B0 03 09 4A */	sth r0, 0x94a(r3)
/* 80D3AA5C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D3AA60  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 80D3AA64  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D3AA68  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80D3AA6C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D3AA70  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 80D3AA74  98 03 09 38 */	stb r0, 0x938(r3)
/* 80D3AA78  38 60 00 01 */	li r3, 1
/* 80D3AA7C  4E 80 00 20 */	blr 
