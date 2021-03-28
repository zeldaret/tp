lbl_8002FA54:
/* 8002FA54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8002FA58  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8002FA5C  38 60 00 00 */	li r3, 0
/* 8002FA60  88 04 0F 3D */	lbz r0, 0xf3d(r4)
/* 8002FA64  28 00 00 01 */	cmplwi r0, 1
/* 8002FA68  4C 82 00 20 */	bnelr 
/* 8002FA6C  C0 24 0F 40 */	lfs f1, 0xf40(r4)
/* 8002FA70  C8 02 83 20 */	lfd f0, lit_7580(r2)
/* 8002FA74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8002FA78  4C 81 00 20 */	blelr 
/* 8002FA7C  38 60 00 01 */	li r3, 1
/* 8002FA80  4E 80 00 20 */	blr 
